// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPlaylistMediaContainer {
        public let metadata: [Operations.GetPlaylistMetadata]?
        public let size: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(metadata: [Operations.GetPlaylistMetadata]? = nil, size: Int? = nil) {
            self.metadata = metadata
            self.size = size
        }
    }
}

extension Operations.GetPlaylistMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case metadata = "Metadata"
        case size
    }
}
