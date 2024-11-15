// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetTokenByPinIdBadRequest {
        public let errors: [Operations.GetTokenByPinIdErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetTokenByPinIdErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetTokenByPinIdBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

