// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _ServerAPI: ServerAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getServerCapabilities() async throws -> Response<Operations.GetServerCapabilitiesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetServerCapabilitiesRequest(with: configuration)
            },
            handleResponse: handleGetServerCapabilitiesResponse
        )
    }
    
    public func getServerPreferences() async throws -> Response<Operations.GetServerPreferencesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetServerPreferencesRequest(with: configuration)
            },
            handleResponse: handleGetServerPreferencesResponse
        )
    }
    
    public func getAvailableClients() async throws -> Response<Operations.GetAvailableClientsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetAvailableClientsRequest(with: configuration)
            },
            handleResponse: handleGetAvailableClientsResponse
        )
    }
    
    public func getDevices() async throws -> Response<Operations.GetDevicesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetDevicesRequest(with: configuration)
            },
            handleResponse: handleGetDevicesResponse
        )
    }
    
    public func getServerIdentity() async throws -> Response<Operations.GetServerIdentityResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetServerIdentityRequest(with: configuration)
            },
            handleResponse: handleGetServerIdentityResponse
        )
    }
    
    public func getMyPlexAccount() async throws -> Response<Operations.GetMyPlexAccountResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetMyPlexAccountRequest(with: configuration)
            },
            handleResponse: handleGetMyPlexAccountResponse
        )
    }
    
    public func getResizedPhoto(request: Operations.GetResizedPhotoRequest) async throws -> Response<Operations.GetResizedPhotoResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetResizedPhotoRequest(with: configuration, request: request)
            },
            handleResponse: handleGetResizedPhotoResponse
        )
    }
    
    public func getServerList() async throws -> Response<Operations.GetServerListResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetServerListRequest(with: configuration)
            },
            handleResponse: handleGetServerListResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetServerCapabilitiesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetServerPreferencesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/:/prefs"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetAvailableClientsRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/clients"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetDevicesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/devices"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetServerIdentityRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/identity"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetMyPlexAccountRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/myplex/account"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetResizedPhotoRequest(with configuration: URLRequestConfiguration, request: Operations.GetResizedPhotoRequest) throws {
    configuration.path = "/photo/:/transcode"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetServerListRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/servers"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetServerCapabilitiesResponse(response: Client.APIResponse) throws -> Operations.GetServerCapabilitiesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerCapabilitiesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerCapabilitiesServerResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetServerPreferencesResponse(response: Client.APIResponse) throws -> Operations.GetServerPreferencesResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetServerPreferencesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetAvailableClientsResponse(response: Client.APIResponse) throws -> Operations.GetAvailableClientsResponse {
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
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetAvailableClientsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetDevicesResponse(response: Client.APIResponse) throws -> Operations.GetDevicesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetDevicesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetDevicesServerResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetServerIdentityResponse(response: Client.APIResponse) throws -> Operations.GetServerIdentityResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerIdentityResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerIdentityServerResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetMyPlexAccountResponse(response: Client.APIResponse) throws -> Operations.GetMyPlexAccountResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetMyPlexAccountResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetMyPlexAccountServerResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetResizedPhotoResponse(response: Client.APIResponse) throws -> Operations.GetResizedPhotoResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetResizedPhotoResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetServerListResponse(response: Client.APIResponse) throws -> Operations.GetServerListResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerListResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerListServerResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

