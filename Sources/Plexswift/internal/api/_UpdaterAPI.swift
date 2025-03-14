// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

class _UpdaterAPI: UpdaterAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getUpdateStatus() async throws -> Response<Operations.GetUpdateStatusResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetUpdateStatusRequest(with: configuration)
            },
            handleResponse: handleGetUpdateStatusResponse
        )
    }
    
    public func checkForUpdates(request: Operations.CheckForUpdatesRequest) async throws -> Response<Operations.CheckForUpdatesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureCheckForUpdatesRequest(with: configuration, request: request)
            },
            handleResponse: handleCheckForUpdatesResponse
        )
    }
    
    public func applyUpdates(request: Operations.ApplyUpdatesRequest) async throws -> Response<Operations.ApplyUpdatesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureApplyUpdatesRequest(with: configuration, request: request)
            },
            handleResponse: handleApplyUpdatesResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetUpdateStatusRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/updater/status"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureCheckForUpdatesRequest(with configuration: URLRequestConfiguration, request: Operations.CheckForUpdatesRequest) throws {
    configuration.path = "/updater/check"
    configuration.method = .put
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureApplyUpdatesRequest(with configuration: URLRequestConfiguration, request: Operations.ApplyUpdatesRequest) throws {
    configuration.path = "/updater/apply"
    configuration.method = .put
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetUpdateStatusResponse(response: Client.APIResponse) throws -> Operations.GetUpdateStatusResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetUpdateStatusResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetUpdateStatusBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetUpdateStatusUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleCheckForUpdatesResponse(response: Client.APIResponse) throws -> Operations.CheckForUpdatesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.CheckForUpdatesBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.CheckForUpdatesUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleApplyUpdatesResponse(response: Client.APIResponse) throws -> Operations.ApplyUpdatesResponse {
    let httpResponse = response.httpResponse
    
    if [200, 500].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.ApplyUpdatesBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.ApplyUpdatesUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

