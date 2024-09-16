// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum UploadPlaylistResponse {
        case empty
        case badRequest(Operations.UploadPlaylistBadRequest)
        case unauthorized(Operations.UploadPlaylistUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.UploadPlaylistBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.UploadPlaylistUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
