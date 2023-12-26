// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetLibraryResponseBody {
        public let errors: [Operations.GetLibraryErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLibraryErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetLibraryResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

