// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct CancelServerActivitiesUnauthorized {
        public let errors: [Operations.CancelServerActivitiesActivitiesErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.CancelServerActivitiesActivitiesErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.CancelServerActivitiesUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

