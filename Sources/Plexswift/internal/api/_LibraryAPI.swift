// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _LibraryAPI: LibraryAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getFileHash(request: Operations.GetFileHashRequest) async throws -> Response<Operations.GetFileHashResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetFileHashRequest(with: configuration, request: request)
            },
            handleResponse: handleGetFileHashResponse
        )
    }
    
    public func getRecentlyAdded() async throws -> Response<Operations.GetRecentlyAddedResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetRecentlyAddedRequest(with: configuration)
            },
            handleResponse: handleGetRecentlyAddedResponse
        )
    }
    
    public func getLibraries() async throws -> Response<Operations.GetLibrariesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetLibrariesRequest(with: configuration)
            },
            handleResponse: handleGetLibrariesResponse
        )
    }
    
    public func getLibrary(request: Operations.GetLibraryRequest) async throws -> Response<Operations.GetLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleGetLibraryResponse
        )
    }
    
    public func deleteLibrary(request: Operations.DeleteLibraryRequest) async throws -> Response<Operations.DeleteLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureDeleteLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteLibraryResponse
        )
    }
    
    public func getLibraryItems(request: Operations.GetLibraryItemsRequest) async throws -> Response<Operations.GetLibraryItemsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetLibraryItemsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetLibraryItemsResponse
        )
    }
    
    public func refreshLibrary(request: Operations.RefreshLibraryRequest) async throws -> Response<Operations.RefreshLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureRefreshLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleRefreshLibraryResponse
        )
    }
    
    public func searchLibrary(request: Operations.SearchLibraryRequest) async throws -> Response<Operations.SearchLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureSearchLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleSearchLibraryResponse
        )
    }
    
    public func getMetadata(request: Operations.GetMetadataRequest) async throws -> Response<Operations.GetMetadataResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetMetadataRequest(with: configuration, request: request)
            },
            handleResponse: handleGetMetadataResponse
        )
    }
    
    public func getMetadataChildren(request: Operations.GetMetadataChildrenRequest) async throws -> Response<Operations.GetMetadataChildrenResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetMetadataChildrenRequest(with: configuration, request: request)
            },
            handleResponse: handleGetMetadataChildrenResponse
        )
    }
    
    public func getTopWatchedContent(request: Operations.GetTopWatchedContentRequest) async throws -> Response<Operations.GetTopWatchedContentResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetTopWatchedContentRequest(with: configuration, request: request)
            },
            handleResponse: handleGetTopWatchedContentResponse
        )
    }
    
    public func getOnDeck() async throws -> Response<Operations.GetOnDeckResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetOnDeckRequest(with: configuration)
            },
            handleResponse: handleGetOnDeckResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetFileHashRequest(with configuration: URLRequestConfiguration, request: Operations.GetFileHashRequest) throws {
    configuration.path = "/library/hashes"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetRecentlyAddedRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/library/recentlyAdded"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibrariesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/library/sections"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.GetLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureDeleteLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionId}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibraryItemsRequest(with configuration: URLRequestConfiguration, request: Operations.GetLibraryItemsRequest) throws {
    configuration.path = "/library/sections/{sectionId}/{tag}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureRefreshLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.RefreshLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionId}/refresh"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureSearchLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.SearchLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionId}/search"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetMetadataRequest(with configuration: URLRequestConfiguration, request: Operations.GetMetadataRequest) throws {
    configuration.path = "/library/metadata/{ratingKey}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetMetadataChildrenRequest(with configuration: URLRequestConfiguration, request: Operations.GetMetadataChildrenRequest) throws {
    configuration.path = "/library/metadata/{ratingKey}/children"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetTopWatchedContentRequest(with configuration: URLRequestConfiguration, request: Operations.GetTopWatchedContentRequest) throws {
    configuration.path = "/library/all/top"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetOnDeckRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/library/onDeck"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetFileHashResponse(response: Client.APIResponse) throws -> Operations.GetFileHashResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetFileHashResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetRecentlyAddedResponse(response: Client.APIResponse) throws -> Operations.GetRecentlyAddedResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetRecentlyAddedResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetRecentlyAddedLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetLibrariesResponse(response: Client.APIResponse) throws -> Operations.GetLibrariesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibrariesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibrariesLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetLibraryResponse(response: Client.APIResponse) throws -> Operations.GetLibraryResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleDeleteLibraryResponse(response: Client.APIResponse) throws -> Operations.DeleteLibraryResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.DeleteLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetLibraryItemsResponse(response: Client.APIResponse) throws -> Operations.GetLibraryItemsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryItemsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetLibraryItemsLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleRefreshLibraryResponse(response: Client.APIResponse) throws -> Operations.RefreshLibraryResponse {
    let httpResponse = response.httpResponse
    
    if [200, 400].contains(httpResponse.statusCode) { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.RefreshLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleSearchLibraryResponse(response: Client.APIResponse) throws -> Operations.SearchLibraryResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.SearchLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.SearchLibraryLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetMetadataResponse(response: Client.APIResponse) throws -> Operations.GetMetadataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetMetadataResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetMetadataLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetMetadataChildrenResponse(response: Client.APIResponse) throws -> Operations.GetMetadataChildrenResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetMetadataChildrenResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetMetadataChildrenLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetTopWatchedContentResponse(response: Client.APIResponse) throws -> Operations.GetTopWatchedContentResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetTopWatchedContentResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetOnDeckResponse(response: Client.APIResponse) throws -> Operations.GetOnDeckResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.GetOnDeckResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        return .empty
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndOneApplicationJsonObject(try JSONDecoder().decode(Operations.GetOnDeckLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

