// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetLibraryItemsResponseBody {
        public let errors: [Operations.GetLibraryItemsErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLibraryItemsErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetLibraryItemsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
