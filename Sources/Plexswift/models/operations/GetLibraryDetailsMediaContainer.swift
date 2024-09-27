// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryDetailsMediaContainer {
        public let allowSync: Bool?
        public let art: String?
        public let content: String?
        public let directory: [Operations.GetLibraryDetailsDirectory]?
        public let fieldType: [Operations.GetLibraryDetailsFieldType]?
        public let identifier: String?
        public let librarySectionID: Int?
        public let mediaTagPrefix: String?
        public let mediaTagVersion: Int?
        public let size: Int?
        public let thumb: String?
        public let title1: String?
        public let type: [Operations.GetLibraryDetailsType]?
        public let viewGroup: String?
        public let viewMode: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(allowSync: Bool? = nil, art: String? = nil, content: String? = nil, directory: [Operations.GetLibraryDetailsDirectory]? = nil, fieldType: [Operations.GetLibraryDetailsFieldType]? = nil, identifier: String? = nil, librarySectionID: Int? = nil, mediaTagPrefix: String? = nil, mediaTagVersion: Int? = nil, size: Int? = nil, thumb: String? = nil, title1: String? = nil, type: [Operations.GetLibraryDetailsType]? = nil, viewGroup: String? = nil, viewMode: Int? = nil) {
            self.allowSync = allowSync
            self.art = art
            self.content = content
            self.directory = directory
            self.fieldType = fieldType
            self.identifier = identifier
            self.librarySectionID = librarySectionID
            self.mediaTagPrefix = mediaTagPrefix
            self.mediaTagVersion = mediaTagVersion
            self.size = size
            self.thumb = thumb
            self.title1 = title1
            self.type = type
            self.viewGroup = viewGroup
            self.viewMode = viewMode
        }
    }}

extension Operations.GetLibraryDetailsMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case allowSync
        case art
        case content
        case directory = "Directory"
        case fieldType = "FieldType"
        case identifier
        case librarySectionID
        case mediaTagPrefix
        case mediaTagVersion
        case size
        case thumb
        case title1
        case type = "Type"
        case viewGroup
        case viewMode
    }
}
