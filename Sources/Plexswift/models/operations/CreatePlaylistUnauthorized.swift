// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct CreatePlaylistUnauthorized {
        public let errors: [Operations.CreatePlaylistPlaylistsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.CreatePlaylistPlaylistsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.CreatePlaylistUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
