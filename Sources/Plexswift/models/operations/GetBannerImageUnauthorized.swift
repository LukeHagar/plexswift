// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetBannerImageUnauthorized {
        public let errors: [Operations.GetBannerImageMediaErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetBannerImageMediaErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetBannerImageUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

