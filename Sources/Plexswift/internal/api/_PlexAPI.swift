// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

class _PlexAPI: PlexAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getCompanionsData(server: PlexServers.GetCompanionsData?) async throws -> Response<Operations.GetCompanionsDataResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetCompanionsData.default(),
            configureRequest: { configuration in
                try configureGetCompanionsDataRequest(with: configuration)
            },
            handleResponse: handleGetCompanionsDataResponse
        )
    }
    
    public func getUserFriends(server: PlexServers.GetUserFriends?) async throws -> Response<Operations.GetUserFriendsResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetUserFriends.default(),
            configureRequest: { configuration in
                try configureGetUserFriendsRequest(with: configuration)
            },
            handleResponse: handleGetUserFriendsResponse
        )
    }
    
    public func getGeoData(server: PlexServers.GetGeoData?) async throws -> Response<Operations.GetGeoDataResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetGeoData.default(),
            configureRequest: { configuration in
                try configureGetGeoDataRequest(with: configuration)
            },
            handleResponse: handleGetGeoDataResponse
        )
    }
    
    public func getHomeData() async throws -> Response<Operations.GetHomeDataResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetHomeDataRequest(with: configuration)
            },
            handleResponse: handleGetHomeDataResponse
        )
    }
    
    public func getServerResources(request: Operations.GetServerResourcesRequest, server: PlexServers.GetServerResources?) async throws -> Response<Operations.GetServerResourcesResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetServerResources.default(),
            configureRequest: { configuration in
                try configureGetServerResourcesRequest(with: configuration, request: request)
            },
            handleResponse: handleGetServerResourcesResponse
        )
    }
    
    public func getPin(request: Operations.GetPinRequest, server: PlexServers.GetPin?) async throws -> Response<Operations.GetPinResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetPin.default(),
            configureRequest: { configuration in
                try configureGetPinRequest(with: configuration, request: request)
            },
            handleResponse: handleGetPinResponse
        )
    }
    
    public func getTokenByPinId(request: Operations.GetTokenByPinIdRequest, server: PlexServers.GetTokenByPinId?) async throws -> Response<Operations.GetTokenByPinIdResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetTokenByPinId.default(),
            configureRequest: { configuration in
                try configureGetTokenByPinIdRequest(with: configuration, request: request)
            },
            handleResponse: handleGetTokenByPinIdResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetCompanionsDataRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/companions"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetUserFriendsRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/friends"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetGeoDataRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/geoip"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetHomeDataRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/home"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetServerResourcesRequest(with configuration: URLRequestConfiguration, request: Operations.GetServerResourcesRequest) throws {
    configuration.path = "/resources"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetPinRequest(with configuration: URLRequestConfiguration, request: Operations.GetPinRequest) throws {
    configuration.path = "/pins"
    configuration.method = .post
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetTokenByPinIdRequest(with configuration: URLRequestConfiguration, request: Operations.GetTokenByPinIdRequest) throws {
    configuration.path = "/pins/{pinID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetCompanionsDataResponse(response: Client.APIResponse) throws -> Operations.GetCompanionsDataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .responseBodies(try JSONDecoder().decode([Operations.ResponseBody].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetCompanionsDataBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetCompanionsDataUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetUserFriendsResponse(response: Client.APIResponse) throws -> Operations.GetUserFriendsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .friends(try JSONDecoder().decode([Operations.Friend].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetUserFriendsBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetUserFriendsUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetGeoDataResponse(response: Client.APIResponse) throws -> Operations.GetGeoDataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .geoData(try JSONDecoder().decode(Operations.GetGeoDataGeoData.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetGeoDataBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetGeoDataUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetHomeDataResponse(response: Client.APIResponse) throws -> Operations.GetHomeDataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetHomeDataResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetHomeDataBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetHomeDataUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetServerResourcesResponse(response: Client.APIResponse) throws -> Operations.GetServerResourcesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .plexDevices(try JSONDecoder().decode([Operations.PlexDevice].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetServerResourcesBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetServerResourcesUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetPinResponse(response: Client.APIResponse) throws -> Operations.GetPinResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 201 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .authPinContainer(try JSONDecoder().decode(Operations.GetPinAuthPinContainer.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetPinBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetTokenByPinIdResponse(response: Client.APIResponse) throws -> Operations.GetTokenByPinIdResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .authPinContainer(try JSONDecoder().decode(Operations.GetTokenByPinIdAuthPinContainer.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetTokenByPinIdBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 404 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetTokenByPinIdResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

