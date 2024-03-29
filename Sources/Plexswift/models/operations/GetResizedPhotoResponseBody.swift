// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetResizedPhotoResponseBody {
        public let errors: [Operations.GetResizedPhotoErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetResizedPhotoErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetResizedPhotoResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

