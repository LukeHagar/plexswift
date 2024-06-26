// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetBandwidthStatisticsResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.GetBandwidthStatisticsResponseBody)
        case fourHundredAndOneApplicationJsonObject(Operations.GetBandwidthStatisticsStatisticsResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.GetBandwidthStatisticsResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func fourHundredAndOneApplicationJsonObject() throws -> Operations.GetBandwidthStatisticsStatisticsResponseBody {
            guard case .fourHundredAndOneApplicationJsonObject(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
