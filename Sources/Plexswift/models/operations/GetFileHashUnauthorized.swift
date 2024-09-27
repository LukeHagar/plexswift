// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetFileHashUnauthorized {
        public let errors: [Operations.GetFileHashLibraryErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetFileHashLibraryErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetFileHashUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
