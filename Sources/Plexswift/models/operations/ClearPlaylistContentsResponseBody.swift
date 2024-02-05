// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct ClearPlaylistContentsResponseBody {
        public let errors: [Operations.ClearPlaylistContentsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.ClearPlaylistContentsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.ClearPlaylistContentsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

