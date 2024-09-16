// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

/// Describes errors that occur when making requests to the API.
///
/// ``PlexswiftError`` describes problems which occur through the lifecycle of making a request to the API, from constructing the underlying network request, through making the network request and handling the resulting response.
///
/// Most of the error values have associated failure reasons:
/// - ``PlexswiftError/failedToConstructRequestURL(_:)``
/// - ``PlexswiftError/failedToSerializeRequestParameters(_:)``
/// - ``PlexswiftError/failedToConstructRequest(_:)``
/// - ``PlexswiftError/failedToHandleResponse(_:)``
///
/// which provide more information about why the error occurred.
///
/// If a network error occurs when making an API request, ``PlexswiftError/failedToMakeNetworkRequest(error:)`` has an associated [`Error`](https://developer.apple.com/documentation/swift/error) value which describes more information about why the network error occurred.
///
/// In exceptional circumstances there may be an internal error which occurs in the implementation of ``Plexswift`` or in the underlying system frameworks. Where this occurs, ``PlexswiftError/internalError(error:)`` provides this information, with additional context if it is available.
///
/// ### Getting an error description
///
/// ``PlexswiftError`` conforms to the [`LocalizedError`](https://developer.apple.com/documentation/foundation/localizederror) protocol. As such a readable description of the error is provided through the [`errorDescription`](https://developer.apple.com/documentation/foundation/localizederror/2946895-errordescription) property.
///
/// ## Topics
///
/// ### Errors
/// - ``PlexswiftError/failedToConstructRequestURL(_:)``
/// - ``PlexswiftError/failedToSerializeRequestParameters(_:)``
/// - ``PlexswiftError/failedToConstructRequest(_:)``
/// - ``PlexswiftError/failedToMakeNetworkRequest(error:)``
/// - ``PlexswiftError/failedToHandleResponse(_:)``
/// - ``PlexswiftError/internalError(error:)``
///
/// ### Error failure information
/// - ``PlexswiftError/RequestURLConstructionFailureReason``
/// - ``PlexswiftError/ParameterSerializationFailureReason``
/// - ``PlexswiftError/RequestConstructionFailureReason``
/// - ``PlexswiftError/ResponseHandlingFailureReason``
///
/// ### Convenience properties
/// - ``PlexswiftError/underlyingError``
public enum PlexswiftError: Swift.Error {
    /// Failure reasons for ``PlexswiftError/failedToConstructRequestURL(_:)`` errors
    public enum RequestURLConstructionFailureReason {
        /// An invalid URL was returned when using a specified server definition to make a network request.
        case invalidServerURL(string: String)
        /// An invalid URL was used to make a network request.
        case invalidRequestURL(string: String)
        /// No default server could be found when making a network request.
        case missingDefaultServer(serverType: String)
        /// A server in a server list was specified but the index of that server is outside of the bounds of the list.
        case invalidServerIndex(serverType: String, index: Int)
    }

    /// Failure reasons for ``PlexswiftError/failedToSerializeRequestParameters(_:)`` errors
    public enum ParameterSerializationFailureReason {
        /// A server URL with parameters was used but the substitution parameter named `key` was not provided.
        ///
        /// A server URL with substitution parameters — for example `https://domain.com:{port}/{configurable}/path` — was specified.
        case missingServerParameterSubstitutionKey(_ key: String, serverString: String)
        /// An API operation path with parameters was used but the substitution parameter named `key` was not specified.
        ///
        /// An API operation with a path with substitution parameters — for example `"/{configurable}/endpoint"` — was specified.
        case missingPathParameterSubstitutionKey(_ key: String, path: String)
        /// A parameter was unexpectedly requested to be serialized to a given format.
        case invalidSerializationParameter(type: String, format: String)
        /// Failed to serialize a [Data](https://developer.apple.com/documentation/foundation/data) object when constructing the request.
        case failedToSerializeData
    }

    /// Failure reasons for ``PlexswiftError/failedToConstructRequest(_:)`` errors
    public enum RequestConstructionFailureReason {
        /// During request construction, a request body was not provided when one was expected.
        case missingRequiredRequestBody
    }

    /// Failure reasons for ``PlexswiftError/failedToHandleResponse(_:)`` errors
    public enum ResponseHandlingFailureReason {
        /// Failed to decode response data.
        case failedToDecodeResponse
        /// Failed to deserialize response JSON.
        case failedToDeserializeJSON(_ error: Swift.Error)
    }

    /// Constructing the URL to make a network request failed.
    case failedToConstructRequestURL(_ reason: RequestURLConstructionFailureReason)
    /// Serializing the parameters required to make the network request failed.
    case failedToSerializeRequestParameters(_ reason: ParameterSerializationFailureReason)
    /// Constructing a underlying request object to make a network request failed.
    case failedToConstructRequest(_ reason: RequestConstructionFailureReason)
    /// Making an underlying network request failed.
    case failedToMakeNetworkRequest(error: Swift.Error)
    /// Handling the response data from an API request failed.
    case failedToHandleResponse(_ reason: ResponseHandlingFailureReason)

    /// An attempt to get response data from a response failed because it was missing.
    case missingResponseData

    /// An error internal to the implementation of ``Client`` occurred.
    case internalError(error: Swift.Error?)

}

extension PlexswiftError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .failedToConstructRequestURL(let reason):
            return "Failed to construct URL for request: \(reason.localizedDescription)"
        case .failedToSerializeRequestParameters(let reason):
            return "Failed to serialize parameters for request: \(reason.localizedDescription)"
        case .failedToConstructRequest(let reason):
            return "Failed to construct request: \(reason.localizedDescription)"
        case .failedToMakeNetworkRequest(let error):
            return "Failed to make network request: \(error.localizedDescription)"
        case .failedToHandleResponse(let reason):
            return "Failed to handle response: \(reason.localizedDescription)"
        case .missingResponseData:
            return "The response didn't contain the requested data"
        case .internalError:
            return "The operation couldn't be completed"
        }
    }
}

extension PlexswiftError {
    /// Returns the associated underlying error, if available.
    public var underlyingError: Swift.Error? {
        switch self {
        case .internalError(let error):
            return error
        case .failedToMakeNetworkRequest(let error):
            return error
        case .failedToHandleResponse(let reason):
            switch reason {
            case .failedToDecodeResponse:
                return nil
            case .failedToDeserializeJSON(let error):
                return error
            }
        case .failedToConstructRequestURL, .failedToSerializeRequestParameters, .failedToConstructRequest, .missingResponseData:
            return nil
        }
    }
}

extension PlexswiftError.RequestURLConstructionFailureReason {
    public var localizedDescription: String {
        switch self {
        case .invalidServerURL(string: let serverString):
            return "Server URL '\(serverString)' is not valid"
        case .invalidRequestURL(string: let string):
            return "Request URL '\(string)' is not valid"
        case .missingDefaultServer(let serverType):
            return "No default server is available for type '\(serverType)'"
        case .invalidServerIndex(serverType: let serverType, index: let index):
            return "Server type '\(serverType)' has no server defined at index \(index)"
        }
    }
}

extension PlexswiftError.ParameterSerializationFailureReason {
    public var localizedDescription: String {
        switch self {
        case .missingServerParameterSubstitutionKey(let key, serverString: let serverString):
            return "Missing substitution parameter '\(key)' when building server URL '\(serverString)'"
        case .missingPathParameterSubstitutionKey(let key, path: let path):
            return "Missing substitution parameter '\(key)' when building path '\(path)'"
        case .invalidSerializationParameter(type: let type, format: let format):
            return "Invalid parameter type '\(type)' when serializing for \(format)"
        case .failedToSerializeData:
            return "Failed to serialize data parameter"
        }
    }
}

extension PlexswiftError.RequestConstructionFailureReason {
    public var localizedDescription: String {
        switch self {
        case .missingRequiredRequestBody:
            return "Required request body is missing"
        }
    }
}

extension PlexswiftError.ResponseHandlingFailureReason {
    public var localizedDescription: String {
        switch self {
        case .failedToDecodeResponse:
            return "Failed to decode response data"
        case .failedToDeserializeJSON(let error):
            return "Failed to deserialize JSON: \(error.localizedDescription)"
        }
    }
}

extension SerializableFormat {
    var formatDescription: String {
        switch self {
        case .path: return "path parameter"
        case .query: return "query parameter"
        case .header: return "request header"
        case .multipart: return "multipart encoding"
        case .form: return "form encoding"
        }
    }
}
