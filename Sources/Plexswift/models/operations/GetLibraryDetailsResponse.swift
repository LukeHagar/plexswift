// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetLibraryDetailsResponse {
        case empty
        case badRequest(Operations.GetLibraryDetailsBadRequest)
        case object(Operations.GetLibraryDetailsResponseBody)
        case unauthorized(Operations.GetLibraryDetailsUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.GetLibraryDetailsBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func object() throws -> Operations.GetLibraryDetailsResponseBody {
            guard case .object(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.GetLibraryDetailsUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
