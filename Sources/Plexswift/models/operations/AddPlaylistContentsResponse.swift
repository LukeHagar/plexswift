// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum AddPlaylistContentsResponse {
        case empty
        case badRequest(Operations.AddPlaylistContentsBadRequest)
        case object(Operations.AddPlaylistContentsResponseBody)
        case unauthorized(Operations.AddPlaylistContentsUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.AddPlaylistContentsBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func object() throws -> Operations.AddPlaylistContentsResponseBody {
            guard case .object(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.AddPlaylistContentsUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
