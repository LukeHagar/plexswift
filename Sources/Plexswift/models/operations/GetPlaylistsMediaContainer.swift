// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPlaylistsMediaContainer {
        public let metadata: [Operations.GetPlaylistsMetadata]?
        public let size: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(metadata: [Operations.GetPlaylistsMetadata]? = nil, size: Int? = nil) {
            self.metadata = metadata
            self.size = size
        }
    }
}

extension Operations.GetPlaylistsMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case metadata = "Metadata"
        case size
    }
}

