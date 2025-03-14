// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetTranscodeSessionsBadRequest {
        public let errors: [Operations.GetTranscodeSessionsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetTranscodeSessionsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetTranscodeSessionsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

