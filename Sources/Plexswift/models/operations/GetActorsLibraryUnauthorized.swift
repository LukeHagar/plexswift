// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetActorsLibraryUnauthorized {
        public let errors: [Operations.GetActorsLibraryLibraryErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetActorsLibraryLibraryErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetActorsLibraryUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

