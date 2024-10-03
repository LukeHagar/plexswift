// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

class _MediaAPI: MediaAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func markPlayed(request: Operations.MarkPlayedRequest) async throws -> Response<Operations.MarkPlayedResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureMarkPlayedRequest(with: configuration, request: request)
            },
            handleResponse: handleMarkPlayedResponse
        )
    }
    
    public func markUnplayed(request: Operations.MarkUnplayedRequest) async throws -> Response<Operations.MarkUnplayedResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureMarkUnplayedRequest(with: configuration, request: request)
            },
            handleResponse: handleMarkUnplayedResponse
        )
    }
    
    public func updatePlayProgress(request: Operations.UpdatePlayProgressRequest) async throws -> Response<Operations.UpdatePlayProgressResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureUpdatePlayProgressRequest(with: configuration, request: request)
            },
            handleResponse: handleUpdatePlayProgressResponse
        )
    }
    
    public func getBannerImage(request: Operations.GetBannerImageRequest) async throws -> ResponseWithHeaders<Operations.GetBannerImageResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetBannerImageRequest(with: configuration, request: request)
            },
            handleResponse: handleGetBannerImageResponse
        )
    }
    
    public func getThumbImage(request: Operations.GetThumbImageRequest) async throws -> ResponseWithHeaders<Operations.GetThumbImageResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetThumbImageRequest(with: configuration, request: request)
            },
            handleResponse: handleGetThumbImageResponse
        )
    }

}

// MARK: - Request Configuration

private func configureMarkPlayedRequest(with configuration: URLRequestConfiguration, request: Operations.MarkPlayedRequest) throws {
    configuration.path = "/:/scrobble"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureMarkUnplayedRequest(with configuration: URLRequestConfiguration, request: Operations.MarkUnplayedRequest) throws {
    configuration.path = "/:/unscrobble"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureUpdatePlayProgressRequest(with configuration: URLRequestConfiguration, request: Operations.UpdatePlayProgressRequest) throws {
    configuration.path = "/:/progress"
    configuration.method = .post
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetBannerImageRequest(with configuration: URLRequestConfiguration, request: Operations.GetBannerImageRequest) throws {
    configuration.path = "/library/metadata/{ratingKey}/banner"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetThumbImageRequest(with configuration: URLRequestConfiguration, request: Operations.GetThumbImageRequest) throws {
    configuration.path = "/library/metadata/{ratingKey}/thumb"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleMarkPlayedResponse(response: Client.APIResponse) throws -> Operations.MarkPlayedResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.MarkPlayedBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.MarkPlayedUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleMarkUnplayedResponse(response: Client.APIResponse) throws -> Operations.MarkUnplayedResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.MarkUnplayedBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.MarkUnplayedUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleUpdatePlayProgressResponse(response: Client.APIResponse) throws -> Operations.UpdatePlayProgressResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.UpdatePlayProgressBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.UpdatePlayProgressUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetBannerImageResponse(response: Client.APIResponse) throws -> Operations.GetBannerImageResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "image/jpeg"), let data = response.data {
            return .bytes(data)
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetBannerImageBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetBannerImageUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetThumbImageResponse(response: Client.APIResponse) throws -> Operations.GetThumbImageResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "image/jpeg"), let data = response.data {
            return .bytes(data)
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetThumbImageBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetThumbImageUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

