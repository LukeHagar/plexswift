// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetServerIdentityResponse {
        case empty
        case object(Operations.GetServerIdentityResponseBody)
        case requestTimeout(Operations.GetServerIdentityRequestTimeout)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func object() throws -> Operations.GetServerIdentityResponseBody {
            guard case .object(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func requestTimeout() throws -> Operations.GetServerIdentityRequestTimeout {
            guard case .requestTimeout(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
