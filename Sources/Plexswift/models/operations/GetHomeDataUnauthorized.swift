// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetHomeDataUnauthorized {
        public let errors: [Operations.GetHomeDataPlexErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetHomeDataPlexErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetHomeDataUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

