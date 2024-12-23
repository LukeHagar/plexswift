// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetUpdateStatusBadRequest {
        public let errors: [Operations.GetUpdateStatusErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetUpdateStatusErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetUpdateStatusBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

