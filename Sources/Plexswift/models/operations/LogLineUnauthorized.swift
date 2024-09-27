// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct LogLineUnauthorized {
        public let errors: [Operations.LogLineLogErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.LogLineLogErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.LogLineUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
