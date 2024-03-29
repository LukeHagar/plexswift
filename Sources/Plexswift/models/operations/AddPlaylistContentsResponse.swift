// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum AddPlaylistContentsResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.AddPlaylistContentsResponseBody)
        case fourHundredAndOneApplicationJsonObject(Operations.AddPlaylistContentsPlaylistsResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.AddPlaylistContentsResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredAndOneApplicationJsonObject() throws -> Operations.AddPlaylistContentsPlaylistsResponseBody {
            guard case .fourHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
