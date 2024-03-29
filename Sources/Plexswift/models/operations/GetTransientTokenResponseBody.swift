// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetTransientTokenResponseBody {
        public let errors: [Operations.GetTransientTokenErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetTransientTokenErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetTransientTokenResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

