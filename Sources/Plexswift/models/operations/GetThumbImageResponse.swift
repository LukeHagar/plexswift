// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum GetThumbImageResponse {
        case empty
        case badRequest(Operations.GetThumbImageBadRequest)
        case bytes(Data)
        case unauthorized(Operations.GetThumbImageUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.GetThumbImageBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func bytes() throws -> Data {
            guard case .bytes(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.GetThumbImageUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}