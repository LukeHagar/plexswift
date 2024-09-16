// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct UploadPlaylistUnauthorized {
        public let errors: [Operations.UploadPlaylistPlaylistsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.UploadPlaylistPlaylistsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.UploadPlaylistUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

