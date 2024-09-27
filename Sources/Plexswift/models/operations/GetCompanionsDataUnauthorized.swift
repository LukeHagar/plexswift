// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetCompanionsDataUnauthorized {
        public let errors: [Operations.GetCompanionsDataPlexErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetCompanionsDataPlexErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetCompanionsDataUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
