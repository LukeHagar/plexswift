// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetPlaylistContentsBadRequest {
        public let errors: [Operations.GetPlaylistContentsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetPlaylistContentsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetPlaylistContentsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

