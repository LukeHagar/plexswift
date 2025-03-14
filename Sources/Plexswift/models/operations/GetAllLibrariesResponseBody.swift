// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The libraries available on the Server
    public struct GetAllLibrariesResponseBody {
        public let mediaContainer: Operations.GetAllLibrariesMediaContainer

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetAllLibrariesMediaContainer) {
            self.mediaContainer = mediaContainer
        }
    }}

extension Operations.GetAllLibrariesResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}

