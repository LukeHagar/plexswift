// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetMyPlexAccountResponse {
        case empty
        case badRequest(Operations.GetMyPlexAccountBadRequest)
        case object(Operations.GetMyPlexAccountResponseBody)
        case unauthorized(Operations.GetMyPlexAccountUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.GetMyPlexAccountBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func object() throws -> Operations.GetMyPlexAccountResponseBody {
            guard case .object(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.GetMyPlexAccountUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
