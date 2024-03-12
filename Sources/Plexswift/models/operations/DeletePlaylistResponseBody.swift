// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct DeletePlaylistResponseBody {
        public let errors: [Operations.DeletePlaylistErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.DeletePlaylistErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.DeletePlaylistResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

