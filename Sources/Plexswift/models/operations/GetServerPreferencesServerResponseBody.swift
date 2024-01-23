// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetServerPreferencesServerResponseBody {
        public let errors: [Operations.GetServerPreferencesErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetServerPreferencesErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetServerPreferencesServerResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
