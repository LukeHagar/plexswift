// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


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
    
    public func getRecentlyAddedLibrary(request: Operations.GetRecentlyAddedLibraryRequest) async throws -> Response<Operations.GetRecentlyAddedLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetRecentlyAddedLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleGetRecentlyAddedLibraryResponse
        )
    }
    
    public func getAllLibraries() async throws -> Response<Operations.GetAllLibrariesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetAllLibrariesRequest(with: configuration)
            },
            handleResponse: handleGetAllLibrariesResponse
        )
    }
    
    public func getLibraryDetails(request: Operations.GetLibraryDetailsRequest) async throws -> Response<Operations.GetLibraryDetailsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetLibraryDetailsRequest(with: configuration, request: request)
            },
            handleResponse: handleGetLibraryDetailsResponse
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
    
    public func getRefreshLibraryMetadata(request: Operations.GetRefreshLibraryMetadataRequest) async throws -> Response<Operations.GetRefreshLibraryMetadataResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetRefreshLibraryMetadataRequest(with: configuration, request: request)
            },
            handleResponse: handleGetRefreshLibraryMetadataResponse
        )
    }
    
    public func getSearchLibrary(request: Operations.GetSearchLibraryRequest) async throws -> Response<Operations.GetSearchLibraryResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetSearchLibraryRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSearchLibraryResponse
        )
    }
    
    public func getSearchAllLibraries(request: Operations.GetSearchAllLibrariesRequest) async throws -> Response<Operations.GetSearchAllLibrariesResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetSearchAllLibrariesRequest(with: configuration, request: request)
            },
            handleResponse: handleGetSearchAllLibrariesResponse
        )
    }
    
    public func getMetaDataByRatingKey(request: Operations.GetMetaDataByRatingKeyRequest) async throws -> Response<Operations.GetMetaDataByRatingKeyResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetMetaDataByRatingKeyRequest(with: configuration, request: request)
            },
            handleResponse: handleGetMetaDataByRatingKeyResponse
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

private func configureGetRecentlyAddedLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.GetRecentlyAddedLibraryRequest) throws {
    configuration.path = "/library/recentlyAdded"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetAllLibrariesRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/library/sections"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibraryDetailsRequest(with configuration: URLRequestConfiguration, request: Operations.GetLibraryDetailsRequest) throws {
    configuration.path = "/library/sections/{sectionKey}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureDeleteLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionKey}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetLibraryItemsRequest(with configuration: URLRequestConfiguration, request: Operations.GetLibraryItemsRequest) throws {
    configuration.path = "/library/sections/{sectionKey}/{tag}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetRefreshLibraryMetadataRequest(with configuration: URLRequestConfiguration, request: Operations.GetRefreshLibraryMetadataRequest) throws {
    configuration.path = "/library/sections/{sectionKey}/refresh"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSearchLibraryRequest(with configuration: URLRequestConfiguration, request: Operations.GetSearchLibraryRequest) throws {
    configuration.path = "/library/sections/{sectionKey}/search"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.queryParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetSearchAllLibrariesRequest(with configuration: URLRequestConfiguration, request: Operations.GetSearchAllLibrariesRequest) throws {
    configuration.path = "/library/search"
    configuration.method = .get
    configuration.queryParameterSerializable = request
    configuration.headerParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetMetaDataByRatingKeyRequest(with configuration: URLRequestConfiguration, request: Operations.GetMetaDataByRatingKeyRequest) throws {
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
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetFileHashBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetFileHashUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetRecentlyAddedLibraryResponse(response: Client.APIResponse) throws -> Operations.GetRecentlyAddedLibraryResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetRecentlyAddedLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetRecentlyAddedLibraryBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetRecentlyAddedLibraryUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetAllLibrariesResponse(response: Client.APIResponse) throws -> Operations.GetAllLibrariesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetAllLibrariesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetAllLibrariesBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetAllLibrariesUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetLibraryDetailsResponse(response: Client.APIResponse) throws -> Operations.GetLibraryDetailsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetLibraryDetailsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetLibraryDetailsBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetLibraryDetailsUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleDeleteLibraryResponse(response: Client.APIResponse) throws -> Operations.DeleteLibraryResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.DeleteLibraryBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.DeleteLibraryUnauthorized.self, from: data))
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
                return .object(try JSONDecoder().decode(Operations.GetLibraryItemsResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetLibraryItemsBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetLibraryItemsUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetRefreshLibraryMetadataResponse(response: Client.APIResponse) throws -> Operations.GetRefreshLibraryMetadataResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        return .empty
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetRefreshLibraryMetadataBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetRefreshLibraryMetadataUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetSearchLibraryResponse(response: Client.APIResponse) throws -> Operations.GetSearchLibraryResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetSearchLibraryResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetSearchLibraryBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetSearchLibraryUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetSearchAllLibrariesResponse(response: Client.APIResponse) throws -> Operations.GetSearchAllLibrariesResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetSearchAllLibrariesResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetSearchAllLibrariesBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetSearchAllLibrariesUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleGetMetaDataByRatingKeyResponse(response: Client.APIResponse) throws -> Operations.GetMetaDataByRatingKeyResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.GetMetaDataByRatingKeyResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetMetaDataByRatingKeyBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetMetaDataByRatingKeyUnauthorized.self, from: data))
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
                return .object(try JSONDecoder().decode(Operations.GetMetadataChildrenResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetMetadataChildrenBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetMetadataChildrenUnauthorized.self, from: data))
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
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetTopWatchedContentBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetTopWatchedContentUnauthorized.self, from: data))
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
                return .object(try JSONDecoder().decode(Operations.GetOnDeckResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .badRequest(try JSONDecoder().decode(Operations.GetOnDeckBadRequest.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 401 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .unauthorized(try JSONDecoder().decode(Operations.GetOnDeckUnauthorized.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

