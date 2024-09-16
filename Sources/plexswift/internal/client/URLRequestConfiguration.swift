// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

enum URLRequestHTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case head = "HEAD"
    case options = "OPTIONS"
    case trace = "TRACE"
}

enum TelemetryHeader {
    case userAgent
    case speakeasyUserAgent
}

protocol URLRequestConfiguration: AnyObject {
    var path: String { get set }
    var method: URLRequestHTTPMethod { get set }
    var contentType: String? { get set }

    var securityParameterProviding: SecurityParameterProviding? { get set }

    var pathParameterSerializable: PathParameterSerializable? { get set }
    var queryParameterSerializable: QueryParameterSerializable? { get set }
    var headerParameterSerializable: HeaderParameterSerializable? { get set }

    var body: Data? { get set }

    var telemetryHeader: TelemetryHeader { get set }
}
