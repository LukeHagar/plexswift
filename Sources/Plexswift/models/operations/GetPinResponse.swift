// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetPinResponse {
        case empty
        case twoHundredAndOneApplicationJsonObject(Operations.GetPinResponseBody)
        case fourHundredApplicationJsonObject(Operations.GetPinPlexResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredAndOneApplicationJsonObject() throws -> Operations.GetPinResponseBody {
            guard case .twoHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredApplicationJsonObject() throws -> Operations.GetPinPlexResponseBody {
            guard case .fourHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
