// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum StopTranscodeSessionResponse {
        case empty
        case badRequest(Operations.StopTranscodeSessionBadRequest)
        case unauthorized(Operations.StopTranscodeSessionUnauthorized)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func badRequest() throws -> Operations.StopTranscodeSessionBadRequest {
            guard case .badRequest(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }

        public func unauthorized() throws -> Operations.StopTranscodeSessionUnauthorized {
            guard case .unauthorized(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }}
