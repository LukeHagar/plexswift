// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRecentlyAddedMediaContainer {
        public let size: Int
        public let allowSync: Bool?
        public let identifier: String?
        /// The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
        /// 
        public let meta: Operations.Meta?
        public let metadata: [Operations.GetRecentlyAddedMetadata]?
        public let offset: Int?
        public let totalSize: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter meta: The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
        /// 
        ///
        public init(size: Int, allowSync: Bool? = nil, identifier: String? = nil, meta: Operations.Meta? = nil, metadata: [Operations.GetRecentlyAddedMetadata]? = nil, offset: Int? = nil, totalSize: Int? = nil) {
            self.size = size
            self.allowSync = allowSync
            self.identifier = identifier
            self.meta = meta
            self.metadata = metadata
            self.offset = offset
            self.totalSize = totalSize
        }
    }}

extension Operations.GetRecentlyAddedMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case size
        case allowSync
        case identifier
        case meta = "Meta"
        case metadata = "Metadata"
        case offset
        case totalSize
    }
}

