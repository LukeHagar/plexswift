// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct StopTaskBadRequest {
        public let errors: [Operations.StopTaskErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.StopTaskErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.StopTaskBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

