// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _ActivitiesAPI: ActivitiesAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getServerActivities() async throws -> Response<Operations.GetServerActivitiesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetServerActivitiesRequest(with: configuration)
            },
            handleResponse: handleGetServerActivitiesResponse
        )
    }
    
    public func cancelServerActivities(request: Operations.CancelServerActivitiesRequest) async throws -> Response<Operations.CancelServerActivitiesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureCancelServerActivitiesRequest(with: configuration, request: request)
            },
            handleResponse: handleCancelServerActivitiesResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetServerActivitiesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/activities"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureCancelServerActivitiesRequest(with configuration: URLRequestConfiguration, request: Operations.CancelServerActivitiesRequest) throws {
    configuration.path = "/activities/{activityUUID}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetServerActivitiesResponse(response: Client.APIResponse) throws -> Operations.GetServerActivitiesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerActivitiesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetServerActivitiesActivitiesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleCancelServerActivitiesResponse(response: Client.APIResponse) throws -> Operations.CancelServerActivitiesResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.CancelServerActivitiesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}
