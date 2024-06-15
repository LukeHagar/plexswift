// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetWatchlistWatchlistResponseBody {
        public let errors: [Operations.GetWatchlistErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetWatchlistErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetWatchlistWatchlistResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

