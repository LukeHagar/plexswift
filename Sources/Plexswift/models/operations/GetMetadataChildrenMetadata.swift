// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetadataChildrenMetadata {
        public let addedAt: Int?
        public let art: String?
        public let guid: String?
        public let index: Int?
        public let key: String?
        public let lastRatedAt: Int?
        public let lastViewedAt: Int?
        public let leafCount: Int?
        public let parentGuid: String?
        public let parentIndex: Int?
        public let parentKey: String?
        public let parentRatingKey: String?
        public let parentStudio: String?
        public let parentTheme: String?
        public let parentThumb: String?
        public let parentTitle: String?
        public let parentYear: Int?
        public let ratingKey: String?
        public let skipCount: Int?
        public let summary: String?
        public let thumb: String?
        public let title: String?
        public let type: String?
        public let updatedAt: Int?
        public let userRating: Int?
        public let viewCount: Int?
        public let viewedLeafCount: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(addedAt: Int? = nil, art: String? = nil, guid: String? = nil, index: Int? = nil, key: String? = nil, lastRatedAt: Int? = nil, lastViewedAt: Int? = nil, leafCount: Int? = nil, parentGuid: String? = nil, parentIndex: Int? = nil, parentKey: String? = nil, parentRatingKey: String? = nil, parentStudio: String? = nil, parentTheme: String? = nil, parentThumb: String? = nil, parentTitle: String? = nil, parentYear: Int? = nil, ratingKey: String? = nil, skipCount: Int? = nil, summary: String? = nil, thumb: String? = nil, title: String? = nil, type: String? = nil, updatedAt: Int? = nil, userRating: Int? = nil, viewCount: Int? = nil, viewedLeafCount: Int? = nil) {
            self.addedAt = addedAt
            self.art = art
            self.guid = guid
            self.index = index
            self.key = key
            self.lastRatedAt = lastRatedAt
            self.lastViewedAt = lastViewedAt
            self.leafCount = leafCount
            self.parentGuid = parentGuid
            self.parentIndex = parentIndex
            self.parentKey = parentKey
            self.parentRatingKey = parentRatingKey
            self.parentStudio = parentStudio
            self.parentTheme = parentTheme
            self.parentThumb = parentThumb
            self.parentTitle = parentTitle
            self.parentYear = parentYear
            self.ratingKey = ratingKey
            self.skipCount = skipCount
            self.summary = summary
            self.thumb = thumb
            self.title = title
            self.type = type
            self.updatedAt = updatedAt
            self.userRating = userRating
            self.viewCount = viewCount
            self.viewedLeafCount = viewedLeafCount
        }
    }
}

extension Operations.GetMetadataChildrenMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case art
        case guid
        case index
        case key
        case lastRatedAt
        case lastViewedAt
        case leafCount
        case parentGuid
        case parentIndex
        case parentKey
        case parentRatingKey
        case parentStudio
        case parentTheme
        case parentThumb
        case parentTitle
        case parentYear
        case ratingKey
        case skipCount
        case summary
        case thumb
        case title
        case type
        case updatedAt
        case userRating
        case viewCount
        case viewedLeafCount
    }
}

