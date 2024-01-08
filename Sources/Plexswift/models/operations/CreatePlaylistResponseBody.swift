// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct CreatePlaylistResponseBody {
        public let errors: [Operations.CreatePlaylistErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.CreatePlaylistErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.CreatePlaylistResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

