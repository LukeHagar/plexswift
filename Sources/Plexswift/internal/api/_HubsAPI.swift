// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _HubsAPI: HubsAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getGlobalHubs(request: Operations.GetGlobalHubsRequest) async throws -> Response<Operations.GetGlobalHubsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetGlobalHubsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetGlobalHubsResponse
        )
    }
    
    public func getLibraryHubs(request: Operations.GetLibraryHubsRequest) async throws -> Response<Operations.GetLibraryHubsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetLibraryHubsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetLibraryHubsResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetGlobalHubsRequest(with configuration: URLRequestConfiguration, request: Operations.GetGlobalHubsRequest) throws {
    configuration.path = "/hubs"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibraryHubsRequest(with configuration: URLRequestConfiguration, request: Operations.GetLibraryHubsRequest) throws {
    configuration.path = "/hubs/sections/{sectionId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetGlobalHubsResponse(response: Client.APIResponse) throws -> Operations.GetGlobalHubsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetGlobalHubsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetGlobalHubsHubsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetLibraryHubsResponse(response: Client.APIResponse) throws -> Operations.GetLibraryHubsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryHubsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryHubsHubsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

