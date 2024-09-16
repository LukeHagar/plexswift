// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetThumbImageBadRequest {
        public let errors: [Operations.GetThumbImageErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetThumbImageErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetThumbImageBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

