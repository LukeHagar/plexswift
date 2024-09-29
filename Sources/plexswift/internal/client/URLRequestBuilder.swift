// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation
#if os(Linux)
import FoundationNetworking
#endif

enum URLRequestBuilderError: Swift.Error {
    case internalError
    case invalidURL(String)
    case missingPathParameterSubstitutionKey(_ key: String, path: String)
}

final class URLRequestBuilder: URLRequestConfiguration {
    private let baseURL: URL
    private let parameterDefaults: ParameterDefaults?
    private let defaultSecurityParameterProviding: SecurityParameterProviding?

    var path: String = ""
    var method: URLRequestHTTPMethod = .get
    var contentType: String?

    var securityParameterProviding: SecurityParameterProviding?

    var pathParameterSerializable: PathParameterSerializable?
    var queryParameterSerializable: QueryParameterSerializable?
    var headerParameterSerializable: HeaderParameterSerializable?

    var body: Data?

    var telemetryHeader: TelemetryHeader = .userAgent

    init(baseURL: URL, parameterDefaults: ParameterDefaults?, defaultSecurityParameterProviding: SecurityParameterProviding?) {
        self.baseURL = baseURL
        self.parameterDefaults = parameterDefaults
        self.defaultSecurityParameterProviding = defaultSecurityParameterProviding
    }

    func build() throws -> URLRequest {
        guard var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true) else {
            throw URLRequestBuilderError.invalidURL(baseURL.absoluteString)
        }

        try buildPathComponents(in: &urlComponents)

        guard let url = urlComponents.url else {
            throw URLRequestBuilderError.invalidURL(baseURL.absoluteString)
        }

        var urlRequest = URLRequest(url: url)
        if let headerParameterSerializable {
            for header in try headerParameterSerializable.serializedHeaderParameters() {
                urlRequest.setValue(header.serialized, forHTTPHeaderField: header.name)
            }
        }

        urlRequest.httpMethod = method.rawValue
        urlRequest.httpBody = body

        if let contentType {
            urlRequest.setValue(contentType, forHTTPHeaderField: "Content-Type")
        }

        urlRequest.setValue("speakeasy-sdk/swift 0.8.3 2.426.2 0.0.3 plexswift", forHTTPHeaderField: telemetryHeader.headerName)

        addSecurityParameters(to: &urlRequest)

        return urlRequest
    }

    // MARK: - Private

    private func buildPathComponents(in urlComponents: inout URLComponents) throws {
        let (path, fragment) = parsePath(path)

        if let pathParameterSerializable {
            urlComponents.path = (urlComponents.path as NSString).appendingPathComponent(
                try substitutePathParameters(in: path, with: pathParameterSerializable, parameterDefaults: parameterDefaults)
            )
        } else {
            urlComponents.path = (urlComponents.path as NSString).appendingPathComponent(path)
        }

        if let queryParameterSerializable {
            urlComponents.percentEncodedQuery = queryString(
                from: try queryParameterSerializable.serializedQueryParameters(with: parameterDefaults, formatOverride: nil)
            )
        }

        urlComponents.fragment = fragment
    }

    private func parsePath(_ path: String) -> (path: String, fragment: String?) {
        let components = path.components(separatedBy: "#")
        guard let first = components.first else {
            return (path: "", fragment: nil)
        }
        return (path: first, fragment: components.count > 1 ? components[1] : nil)
    }

    private func addSecurityParameters(to request: inout URLRequest) {
        guard let securityParameterProviding = securityParameterProviding ?? defaultSecurityParameterProviding else { return }

        let parameters = securityParameterProviding.securityParameters()
        for parameter in parameters {
            switch parameter {
            case .httpBasic(username: let username, password: let password):
                if let username, let password, let encoded = "\(username):\(password)".data(using: .utf8)?.base64EncodedString() {
                    request.addValue("Basic \(encoded)", forHTTPHeaderField: "Authorization")
                }
            case .httpBearer(value: let value):
                if let value {
                    let headerValue = value.range(of: "Bearer ")?.lowerBound == value.startIndex ? value : "Bearer \(value)"
                    request.addValue(headerValue, forHTTPHeaderField: "Authorization")
                }
            case .apiKey(name: let name, value: let value), .oauth2(name: let name, value: let value), .openIdConnect(name: let name, value: let value):
                if let value {
                    request.addValue(value, forHTTPHeaderField: name)
                }
            }
        }
    }
}

// Substitute path parameters and rethrow `StringSubstitutionError`s as `URLRequestBuilderError`s.
fileprivate func substitutePathParameters(
    in path: String,
    with pathParameterSerializable: PathParameterSerializable,
    parameterDefaults: ParameterDefaults?
) throws -> String {
    do {
        let parameters = try pathParameterSerializable.serializedPathParameters(formatOverride: nil)
        return try path.substituteComponents { key in
            return try parameters[key] ?? parameterDefaults?.defaultSerializedPathParameter(for: key)
        }
    } catch let error as StringSubstitutionError {
        switch error {
        case .internal:
            throw URLRequestBuilderError.internalError
        case .missingParameter(named: let name, in: let string):
            throw URLRequestBuilderError.missingPathParameterSubstitutionKey(name, path: string)
        }
    }
}

fileprivate extension TelemetryHeader {
    var headerName: String {
        switch self {
        case .userAgent: return "User-Agent"
        case .speakeasyUserAgent: return "X-Speakeasy-User-Agent"
        }
    }
}
