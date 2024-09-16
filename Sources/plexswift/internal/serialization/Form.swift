// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

func multipartContentType(with boundary: String) -> String {
    return "multipart/form-data; boundary=\(boundary)"
}

func serializeMultipartFormData(with multipartFormBodySerializable: MultipartFormBodySerializable) throws -> (boundary: String, data: Data) {
    let boundary = UUID().uuidString

    var data = Data()
    let parameters = try multipartFormBodySerializable.serializedMultipartFormParameters(formatOverride: nil)
    parameters.forEach { parameter in
        switch parameter {
        case .value(name: let name, serialized: let serialized):
            guard let serialized else { return }

            data.append(utf8String: "--\(boundary)\r\n")
            data.append(utf8String: "Content-Disposition: multipart/form-data; name=\"\(name)\"\r\n")
            data.append(utf8String: "Content-Type: text/plain\r\n\r\n")
            data.append(utf8String: "\(serialized)\r\n")
        case .file(name: let name, filename: let filename, data: let content):
            guard let filename, let content, let contentString = String(data: content, encoding: .ascii) else { return }

            data.append(utf8String: "--\(boundary)\r\n")
            data.append(utf8String: "Content-Disposition: multipart/form-data; name=\"\(name)\"; filename=\"\(filename)\"\r\n")
            data.append(utf8String: "Content-Type: text/plain\r\n\r\n")
            data.append(utf8String: "\(contentString)\r\n")
        }
    }

    data.append(utf8String: "--\(boundary)--")

    return (boundary: boundary, data: data)
}

func serializeFormData(with formBodySerializable: FormBodySerializable) throws -> Data? {
    let encoded = (try formBodySerializable.serializedFormParameters(formatOverride: nil))
        .compactMap { parameter -> (String, String)? in
            guard let serialized = parameter.serialized else { return nil }
            return (parameter.name, serialized)
        }
        .map { (name, serialized) in
            return "\(name)=\(serialized)"
        }
        .joined(separator: "&")

    return encoded.data(using: .utf8)
}

fileprivate extension Data {
    mutating func append(utf8String: String) {
        if let data = utf8String.data(using: .utf8) {
            append(data)
        }
    }
}
