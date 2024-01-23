// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetPlaylistsPlaylistsResponseBody {
        public let errors: [Operations.GetPlaylistsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetPlaylistsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetPlaylistsPlaylistsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
