// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetadataChildrenMediaContainer {
        public let allowSync: Bool?
        public let art: String?
        public let directory: [Operations.GetMetadataChildrenDirectory]?
        public let identifier: String?
        public let key: String?
        public let librarySectionID: Int?
        public let librarySectionTitle: String?
        public let librarySectionUUID: String?
        public let mediaTagPrefix: String?
        public let mediaTagVersion: Int?
        public let metadata: [Operations.GetMetadataChildrenMetadata]?
        public let nocache: Bool?
        public let parentIndex: Int?
        public let parentTitle: String?
        public let parentYear: Int?
        public let size: Int?
        public let summary: String?
        public let theme: String?
        public let thumb: String?
        public let title1: String?
        public let title2: String?
        public let viewGroup: String?
        public let viewMode: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(allowSync: Bool? = nil, art: String? = nil, directory: [Operations.GetMetadataChildrenDirectory]? = nil, identifier: String? = nil, key: String? = nil, librarySectionID: Int? = nil, librarySectionTitle: String? = nil, librarySectionUUID: String? = nil, mediaTagPrefix: String? = nil, mediaTagVersion: Int? = nil, metadata: [Operations.GetMetadataChildrenMetadata]? = nil, nocache: Bool? = nil, parentIndex: Int? = nil, parentTitle: String? = nil, parentYear: Int? = nil, size: Int? = nil, summary: String? = nil, theme: String? = nil, thumb: String? = nil, title1: String? = nil, title2: String? = nil, viewGroup: String? = nil, viewMode: Int? = nil) {
            self.allowSync = allowSync
            self.art = art
            self.directory = directory
            self.identifier = identifier
            self.key = key
            self.librarySectionID = librarySectionID
            self.librarySectionTitle = librarySectionTitle
            self.librarySectionUUID = librarySectionUUID
            self.mediaTagPrefix = mediaTagPrefix
            self.mediaTagVersion = mediaTagVersion
            self.metadata = metadata
            self.nocache = nocache
            self.parentIndex = parentIndex
            self.parentTitle = parentTitle
            self.parentYear = parentYear
            self.size = size
            self.summary = summary
            self.theme = theme
            self.thumb = thumb
            self.title1 = title1
            self.title2 = title2
            self.viewGroup = viewGroup
            self.viewMode = viewMode
        }
    }
}

extension Operations.GetMetadataChildrenMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case allowSync
        case art
        case directory = "Directory"
        case identifier
        case key
        case librarySectionID
        case librarySectionTitle
        case librarySectionUUID
        case mediaTagPrefix
        case mediaTagVersion
        case metadata = "Metadata"
        case nocache
        case parentIndex
        case parentTitle
        case parentYear
        case size
        case summary
        case theme
        case thumb
        case title1
        case title2
        case viewGroup
        case viewMode
    }
}

