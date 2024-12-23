// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetMediaProvidersUnauthorized {
        public let errors: [Operations.GetMediaProvidersServerErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetMediaProvidersServerErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetMediaProvidersUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

