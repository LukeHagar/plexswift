// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _SearchAPI: SearchAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func performSearch(request: Operations.PerformSearchRequest) async throws -> Response<Operations.PerformSearchResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configurePerformSearchRequest(with: configuration, request: request)
            },
            handleResponse: handlePerformSearchResponse
        )
    }
    
    public func performVoiceSearch(request: Operations.PerformVoiceSearchRequest) async throws -> Response<Operations.PerformVoiceSearchResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configurePerformVoiceSearchRequest(with: configuration, request: request)
            },
            handleResponse: handlePerformVoiceSearchResponse
        )
    }
    
    public func getSearchResults(request: Operations.GetSearchResultsRequest) async throws -> Response<Operations.GetSearchResultsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetSearchResultsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSearchResultsResponse
        )
    }

}

// MARK: - Request Configuration

private func configurePerformSearchRequest(with configuration: URLRequestConfiguration, request: Operations.PerformSearchRequest) throws {
    configuration.path = "/hubs/search"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configurePerformVoiceSearchRequest(with configuration: URLRequestConfiguration, request: Operations.PerformVoiceSearchRequest) throws {
    configuration.path = "/hubs/search/voice"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSearchResultsRequest(with configuration: URLRequestConfiguration, request: Operations.GetSearchResultsRequest) throws {
    configuration.path = "/search"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handlePerformSearchResponse(response: Client.APIResponse) throws -> Operations.PerformSearchResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.PerformSearchResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handlePerformVoiceSearchResponse(response: Client.APIResponse) throws -> Operations.PerformVoiceSearchResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.PerformVoiceSearchResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetSearchResultsResponse(response: Client.APIResponse) throws -> Operations.GetSearchResultsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetSearchResultsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetSearchResultsSearchResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

