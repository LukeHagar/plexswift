// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetLibraryHubsHubsResponseBody {
        public let errors: [Operations.GetLibraryHubsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLibraryHubsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetLibraryHubsHubsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
