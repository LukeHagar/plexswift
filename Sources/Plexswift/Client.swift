// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

/// An object used to make API calls.
///
/// ``Client`` is the main object that you interact with to communicate with the API, and is responsible for making the underlying HTTP requests for each API operation and handling the resulting responses. It implements the ``PlexswiftAPI`` protocol to support the available API operations.
///
/// ### API calls
///
/// Each API endpoint (or *operation*) is exposed as a method. For instance, the 'getResizedPhoto' operation is exposed as:
///
/// ```swift
/// func getResizedPhoto(request: Operations.GetResizedPhotoRequest) async throws -> Response<Operations.GetResizedPhotoResponse>
/// ```
///
/// ### Request and response objects
///
/// If an API operation has input parameters, the corresponding API method takes a `request` object, describing these parameters. The request object can either be a primitive value like a `String` or `[String]`, or a Swift `struct` describing the parameters.
///
/// Each API method also returns a ``Response`` object, which provides information about the result of making the API request. It is generic and parameterised by the resulting data — stored in the ``Response/data`` property — which is determined by each API operation.
///
/// The ``Response/data`` property defined by each API operation is an enum, and you can `switch` on this value to extract the corresponding value from the response. For example, the 'getResizedPhoto' operation returns a ``Operations/GetResizedPhotoResponse`` value:
///
/// ```swift
/// let response: Response<Operations.GetResizedPhotoResponse> = ... // Response from API call
/// switch response.data {
/// case .object(let object):
///     // Handle response
/// case .empty:
///     // Handle empty response
/// }
/// ```
///
/// In addition to any data returned by a given API operation, each ``Response`` value contains information about the network request, including:
/// - The `contentType` returned by the server.
/// - The `statusCode` representing the HTTP status code returned by making the request
/// - A `httpResponse` value which is the raw [HTTPURLResponse](https://developer.apple.com/documentation/foundation/httpurlresponse) returned from making the underlying network request.
///
/// These values can be used to debug and/or react to responses returned from executing a given API operation.
///
/// ### Authentication
///
/// Calls to the API must be authenticated, and ``Client`` must be initialized with a configured ``Shared/Security`` object to authenticate requests.
///
/// ## Topics
///
/// ### Initializers
///
/// - ``init(globalParameters:security:)``
///
/// ### API calls
///
/// These methods allow you to make requests to the API.
///
///
/// ### Scoped API calls
///
/// These properties logically group other parts of the API.
///
/// - ``server``
/// - ``media``
/// - ``video``
/// - ``activities``
/// - ``butler``
/// - ``plex``
/// - ``hubs``
/// - ``search``
/// - ``library``
/// - ``log``
/// - ``playlists``
/// - ``authentication``
/// - ``statistics``
/// - ``sessions``
/// - ``updater``
/// - ``watchlist``
///
public final class Client {
    internal struct APIResponse {
      let httpResponse: HTTPURLResponse
      let data: Data?
    }

    internal typealias ConfigureURLRequest = (_ configuration: URLRequestConfiguration) throws -> Void
    internal typealias ResponseHandler<ResponseObject> = (_ apiResponse: APIResponse) throws -> ResponseObject

    // Underscore-prefix properties so these do not potentially conflict with any operation namespaces.
    private lazy var _session = URLSession(configuration: .default)
    private var _globalParameters: GlobalParameters?
    private var _security: Shared.Security

    private var _selectedServer: GlobalServers?

    /// Creates an API client object with the specified parameters.
    public init(globalParameters: GlobalParameters? = nil, security: Shared.Security) {
        self._globalParameters = globalParameters
        self._security = security
    }

    // MARK: - Internal

    internal func makeRequest<ResponseType: ResponseFields, ResponseObject>(
        with server: Server? = nil,
        configureRequest: @escaping ConfigureURLRequest,
        handleResponse responseHandler: @escaping ResponseHandler<ResponseObject>
    ) async throws -> ResponseType where ResponseType.T == ResponseObject {
        return try await withCheckedThrowingContinuation { continuation in
            _makeRequest(with: server, configureRequest: configureRequest) { result in
                do {
                    let apiResponse = try result.get()
                    let responseObject = try responseHandler(apiResponse)
                    continuation.resume(returning: ResponseType(httpResponse: apiResponse.httpResponse, data: responseObject))
                } catch let error as ServerConversionError {
                    switch error {
                    case .internal:
                        continuation.resume(throwing: PlexswiftError.internalError(error: nil))
                    case .missingDefaultServer(let serverType):
                        continuation.resume(throwing: PlexswiftError.failedToConstructRequestURL(.missingDefaultServer(serverType: serverType)))
                    case .invalidServerIndex(let serverType, let index):
                        continuation.resume(throwing: PlexswiftError.failedToConstructRequestURL(.invalidServerIndex(serverType: serverType, index: index)))
                    case .missingServerParameterSubstitutionKey(let key, let serverString):
                        continuation.resume(throwing: PlexswiftError.failedToSerializeRequestParameters(.missingServerParameterSubstitutionKey(key, serverString: serverString)))
                    }
                } catch let error as URLRequestBuilderError {
                    switch error {
                    case .internalError:
                        continuation.resume(throwing: PlexswiftError.internalError(error: nil))
                    case .invalidURL(let urlString):
                        continuation.resume(throwing: PlexswiftError.failedToConstructRequestURL(.invalidRequestURL(string: urlString)))
                    case .missingPathParameterSubstitutionKey(let key, let path):
                        continuation.resume(throwing: PlexswiftError.failedToSerializeRequestParameters(.missingPathParameterSubstitutionKey(key, path: path)))
                    }
                } catch let error as SerializationError {
                    switch error {
                    case .failedToSerializeData:
                        continuation.resume(throwing: PlexswiftError.failedToSerializeRequestParameters(.failedToSerializeData))
                    case .missingRequiredRequestBody:
                        continuation.resume(throwing: PlexswiftError.failedToConstructRequest(.missingRequiredRequestBody))
                    case .invalidSerializationParameter(let type, let format):
                        continuation.resume(throwing: PlexswiftError.failedToSerializeRequestParameters(.invalidSerializationParameter(type: type, format: format)))
                    }
                } catch let error as ResponseHandlerError {
                    switch error {
                    case .failedToDecodeResponse:
                        continuation.resume(throwing: PlexswiftError.failedToHandleResponse(.failedToDecodeResponse))
                    case .failedToDecodeJSON(let error):
                        continuation.resume(throwing: PlexswiftError.failedToHandleResponse(.failedToDeserializeJSON(error)))
                    }
                } catch let error as PlexswiftError {
                    continuation.resume(throwing: error)
                } catch {
                    continuation.resume(throwing: PlexswiftError.internalError(error: error))
                }
            }
        }
    }

    internal func _makeRequest(
        with server: Server? = nil,
        configureRequest: ConfigureURLRequest,
        completion: @escaping (Result<APIResponse, Swift.Error>) -> Void
    ) {
        do {
            let builder = URLRequestBuilder(
                baseURL: try baseURL(serverOverride: server),
                parameterDefaults: _globalParameters,
                defaultSecurityParameterProviding: _security
            )
            try configureRequest(builder)
            return makeDataRequest(with: try builder.build(), completion: completion)
        } catch {
            completion(.failure(error))
        }
    }

    // MARK: - Private

    private func baseURL(serverOverride: Server? = nil) throws -> URL {
        let server: Server
        if let serverOverride {
            server = serverOverride
        } else if let selectedServer = _selectedServer {
            server = try selectedServer.server()
        } else {
            server = try GlobalServers.default()
        }

        guard let url = URL(string: server.urlString) else {
            throw PlexswiftError.failedToConstructRequestURL(.invalidServerURL(string: server.urlString))
        }
        return url
    }

    private func makeDataRequest(with urlRequest: URLRequest, completion: @escaping (Result<APIResponse, Swift.Error>) -> Void) {
        let task = _session.dataTask(with: urlRequest) { data, response, error in
            if let error {
                completion(.failure(PlexswiftError.failedToMakeNetworkRequest(error: error)))
            } else if let httpResponse = response as? HTTPURLResponse {
                completion(.success(APIResponse(httpResponse: httpResponse, data: data)))
            } else {
                completion(.failure(PlexswiftError.internalError(error: nil)))
            }
        }
        task.resume()
    }
}

enum ResponseHandlerError: Swift.Error {
    case failedToDecodeJSON(_ error: Swift.Error)
    case failedToDecodeResponse
}
