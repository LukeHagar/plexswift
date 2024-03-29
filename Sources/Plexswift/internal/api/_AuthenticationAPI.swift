// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _AuthenticationAPI: AuthenticationAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getTransientToken(request: Operations.GetTransientTokenRequest) async throws -> Response<Operations.GetTransientTokenResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetTransientTokenRequest(with: configuration, request: request)
            },
            handleResponse: handleGetTransientTokenResponse
        )
    }
    
    public func getSourceConnectionInformation(request: Operations.GetSourceConnectionInformationRequest) async throws -> Response<Operations.GetSourceConnectionInformationResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetSourceConnectionInformationRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSourceConnectionInformationResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetTransientTokenRequest(with configuration: URLRequestConfiguration, request: Operations.GetTransientTokenRequest) throws {
    configuration.path = "/security/token"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSourceConnectionInformationRequest(with configuration: URLRequestConfiguration, request: Operations.GetSourceConnectionInformationRequest) throws {
    configuration.path = "/security/resources"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetTransientTokenResponse(response: Client.APIResponse) throws -> Operations.GetTransientTokenResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetTransientTokenResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetSourceConnectionInformationResponse(response: Client.APIResponse) throws -> Operations.GetSourceConnectionInformationResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetSourceConnectionInformationResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

