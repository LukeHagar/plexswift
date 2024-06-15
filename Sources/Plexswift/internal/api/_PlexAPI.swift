// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _PlexAPI: PlexAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getHomeData() async throws -> Response<Operations.GetHomeDataResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetHomeDataRequest(with: configuration)
            },
            handleResponse: handleGetHomeDataResponse
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
    
    public func getToken(request: Operations.GetTokenRequest, server: PlexServers.GetToken?) async throws -> Response<Operations.GetTokenResponse> {
        return try await client.makeRequest(
            with: try server?.server() ?? PlexServers.GetToken.default(),
            configureRequest: { configuration in
                try configureGetTokenRequest(with: configuration, request: request)
            },
            handleResponse: handleGetTokenResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetHomeDataRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/home"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetPinRequest(with configuration: URLRequestConfiguration, request: Operations.GetPinRequest) throws {
    configuration.path = "/pins"
    configuration.method = .post
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetTokenRequest(with configuration: URLRequestConfiguration, request: Operations.GetTokenRequest) throws {
    configuration.path = "/pins/{pinID}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetHomeDataResponse(response: Client.APIResponse) throws -> Operations.GetHomeDataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetHomeDataResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetHomeDataPlexResponseBody.self, from: data))
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
                return .twoHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetPinResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetPinPlexResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetTokenResponse(response: Client.APIResponse) throws -> Operations.GetTokenResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetTokenResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetTokenPlexResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

