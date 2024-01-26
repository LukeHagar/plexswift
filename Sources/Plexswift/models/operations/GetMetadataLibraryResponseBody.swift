// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetMetadataLibraryResponseBody {
        public let errors: [Operations.GetMetadataErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetMetadataErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetMetadataLibraryResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

