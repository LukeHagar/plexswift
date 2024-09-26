// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The recently added content
    public struct GetRecentlyAddedLibraryResponseBody {
        public let mediaContainer: Operations.GetRecentlyAddedLibraryMediaContainer?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetRecentlyAddedLibraryMediaContainer? = nil) {
            self.mediaContainer = mediaContainer
        }
    }}

extension Operations.GetRecentlyAddedLibraryResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}

