// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetLatestLibraryItemsResponseBody {
        public let errors: [Operations.GetLatestLibraryItemsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLatestLibraryItemsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetLatestLibraryItemsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

