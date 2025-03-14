// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    /// 
    public struct GetLibraryItemsMediaContainer {
        public let allowSync: Bool
        public let art: String
        public let content: String
        public let identifier: String
        public let librarySectionID: Int
        public let librarySectionTitle: String
        public let librarySectionUUID: String
        public let mediaTagPrefix: String
        public let mediaTagVersion: Int
        public let offset: Int
        public let size: Int
        public let thumb: String
        public let title1: String
        public let title2: String
        public let totalSize: Int
        public let viewGroup: String
        public let fieldType: [Operations.GetLibraryItemsFieldType]?
        /// The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
        /// 
        public let meta: Operations.GetLibraryItemsMeta?
        public let metadata: [Operations.GetLibraryItemsMetadata]?
        public let mixedParents: Bool?
        public let nocache: Bool?
        public let type: [Operations.GetLibraryItemsType]?
        public let viewMode: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter meta: The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
        /// 
        ///
        public init(allowSync: Bool, art: String, content: String, identifier: String, librarySectionID: Int, librarySectionTitle: String, librarySectionUUID: String, mediaTagPrefix: String, mediaTagVersion: Int, offset: Int, size: Int, thumb: String, title1: String, title2: String, totalSize: Int, viewGroup: String, fieldType: [Operations.GetLibraryItemsFieldType]? = nil, meta: Operations.GetLibraryItemsMeta? = nil, metadata: [Operations.GetLibraryItemsMetadata]? = nil, mixedParents: Bool? = nil, nocache: Bool? = nil, type: [Operations.GetLibraryItemsType]? = nil, viewMode: Int? = nil) {
            self.allowSync = allowSync
            self.art = art
            self.content = content
            self.identifier = identifier
            self.librarySectionID = librarySectionID
            self.librarySectionTitle = librarySectionTitle
            self.librarySectionUUID = librarySectionUUID
            self.mediaTagPrefix = mediaTagPrefix
            self.mediaTagVersion = mediaTagVersion
            self.offset = offset
            self.size = size
            self.thumb = thumb
            self.title1 = title1
            self.title2 = title2
            self.totalSize = totalSize
            self.viewGroup = viewGroup
            self.fieldType = fieldType
            self.meta = meta
            self.metadata = metadata
            self.mixedParents = mixedParents
            self.nocache = nocache
            self.type = type
            self.viewMode = viewMode
        }
    }}

extension Operations.GetLibraryItemsMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case allowSync
        case art
        case content
        case identifier
        case librarySectionID
        case librarySectionTitle
        case librarySectionUUID
        case mediaTagPrefix
        case mediaTagVersion
        case offset
        case size
        case thumb
        case title1
        case title2
        case totalSize
        case viewGroup
        case fieldType = "FieldType"
        case meta = "Meta"
        case metadata = "Metadata"
        case mixedParents
        case nocache
        case type = "Type"
        case viewMode
    }
}

