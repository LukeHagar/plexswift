// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetMetadataResponseBody {
        public let errors: [Operations.GetMetadataErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetMetadataErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetMetadataResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

