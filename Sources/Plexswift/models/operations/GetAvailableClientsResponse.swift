// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetAvailableClientsResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.GetAvailableClientsResponseBody)
        case fourHundredAndOneApplicationJsonObject(Operations.GetAvailableClientsServerResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.GetAvailableClientsResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredAndOneApplicationJsonObject() throws -> Operations.GetAvailableClientsServerResponseBody {
            guard case .fourHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
