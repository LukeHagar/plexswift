// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetServerPreferencesUnauthorized {
        public let errors: [Operations.GetServerPreferencesServerErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetServerPreferencesServerErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetServerPreferencesUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
