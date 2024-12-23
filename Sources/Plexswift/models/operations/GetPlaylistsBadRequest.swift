// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetPlaylistsBadRequest {
        public let errors: [Operations.GetPlaylistsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetPlaylistsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetPlaylistsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

