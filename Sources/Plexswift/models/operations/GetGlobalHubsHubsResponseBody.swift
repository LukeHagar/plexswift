// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetGlobalHubsHubsResponseBody {
        public let errors: [Operations.GetGlobalHubsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetGlobalHubsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetGlobalHubsHubsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

