// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPlaylistsMetadata {
        public let addedAt: Int?
        public let composite: String?
        public let duration: Int?
        public let guid: String?
        public let icon: String?
        public let key: String?
        public let lastViewedAt: Int?
        public let leafCount: Int?
        public let playlistType: String?
        public let ratingKey: String?
        public let smart: Bool?
        public let summary: String?
        public let title: String?
        public let type: String?
        public let updatedAt: Int?
        public let viewCount: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(addedAt: Int? = nil, composite: String? = nil, duration: Int? = nil, guid: String? = nil, icon: String? = nil, key: String? = nil, lastViewedAt: Int? = nil, leafCount: Int? = nil, playlistType: String? = nil, ratingKey: String? = nil, smart: Bool? = nil, summary: String? = nil, title: String? = nil, type: String? = nil, updatedAt: Int? = nil, viewCount: Int? = nil) {
            self.addedAt = addedAt
            self.composite = composite
            self.duration = duration
            self.guid = guid
            self.icon = icon
            self.key = key
            self.lastViewedAt = lastViewedAt
            self.leafCount = leafCount
            self.playlistType = playlistType
            self.ratingKey = ratingKey
            self.smart = smart
            self.summary = summary
            self.title = title
            self.type = type
            self.updatedAt = updatedAt
            self.viewCount = viewCount
        }
    }}

extension Operations.GetPlaylistsMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case composite
        case duration
        case guid
        case icon
        case key
        case lastViewedAt
        case leafCount
        case playlistType
        case ratingKey
        case smart
        case summary
        case title
        case type
        case updatedAt
        case viewCount
    }
}

