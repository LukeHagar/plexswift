// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetTranscodeSessionsResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.GetTranscodeSessionsResponseBody)
        case fourHundredAndOneApplicationJsonObject(Operations.GetTranscodeSessionsSessionsResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.GetTranscodeSessionsResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredAndOneApplicationJsonObject() throws -> Operations.GetTranscodeSessionsSessionsResponseBody {
            guard case .fourHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
