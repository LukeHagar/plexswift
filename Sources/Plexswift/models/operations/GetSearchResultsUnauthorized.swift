// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetSearchResultsUnauthorized {
        public let errors: [Operations.GetSearchResultsSearchErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetSearchResultsSearchErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetSearchResultsUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

