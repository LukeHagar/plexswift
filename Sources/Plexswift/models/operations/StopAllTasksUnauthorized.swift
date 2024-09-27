// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct StopAllTasksUnauthorized {
        public let errors: [Operations.StopAllTasksButlerErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.StopAllTasksButlerErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.StopAllTasksUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
