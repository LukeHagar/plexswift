// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetResourcesStatisticsResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.GetResourcesStatisticsResponseBody)
        case fourHundredAndOneApplicationJsonObject(Operations.GetResourcesStatisticsStatisticsResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.GetResourcesStatisticsResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredAndOneApplicationJsonObject() throws -> Operations.GetResourcesStatisticsStatisticsResponseBody {
            guard case .fourHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}