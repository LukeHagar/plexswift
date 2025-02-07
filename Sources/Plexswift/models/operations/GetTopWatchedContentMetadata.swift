// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTopWatchedContentMetadata {
        public let addedAt: Int?
        public let art: String?
        @DecimalSerialized
        public private(set) var audienceRating: Double?
        public let audienceRatingImage: String?
        public let childCount: Int?
        public let contentRating: String?
        public let country: [Operations.GetTopWatchedContentCountry]?
        public let duration: Int?
        public let genre: [Operations.GetTopWatchedContentGenre]?
        public let globalViewCount: Int?
        public let guid: String?
        public let guids: [Operations.GetTopWatchedContentGuids]?
        public let index: Int?
        public let key: String?
        public let leafCount: Int?
        public let librarySectionID: Int?
        public let librarySectionKey: String?
        public let librarySectionTitle: String?
        @DateOnly
        public private(set) var originallyAvailableAt: Date?
        public let ratingKey: String?
        public let role: [Operations.GetTopWatchedContentRole]?
        public let slug: String?
        public let studio: String?
        public let summary: String?
        public let tagline: String?
        public let thumb: String?
        public let title: String?
        public let type: String?
        public let updatedAt: Int?
        public let user: [Operations.GetTopWatchedContentUser]?
        public let viewedLeafCount: Int?
        public let year: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(addedAt: Int? = nil, art: String? = nil, audienceRating: Double? = nil, audienceRatingImage: String? = nil, childCount: Int? = nil, contentRating: String? = nil, country: [Operations.GetTopWatchedContentCountry]? = nil, duration: Int? = nil, genre: [Operations.GetTopWatchedContentGenre]? = nil, globalViewCount: Int? = nil, guid: String? = nil, guids: [Operations.GetTopWatchedContentGuids]? = nil, index: Int? = nil, key: String? = nil, leafCount: Int? = nil, librarySectionID: Int? = nil, librarySectionKey: String? = nil, librarySectionTitle: String? = nil, originallyAvailableAt: Date? = nil, ratingKey: String? = nil, role: [Operations.GetTopWatchedContentRole]? = nil, slug: String? = nil, studio: String? = nil, summary: String? = nil, tagline: String? = nil, thumb: String? = nil, title: String? = nil, type: String? = nil, updatedAt: Int? = nil, user: [Operations.GetTopWatchedContentUser]? = nil, viewedLeafCount: Int? = nil, year: Int? = nil) {
            self.addedAt = addedAt
            self.art = art
            self._audienceRating = DecimalSerialized<Double?>(wrappedValue: audienceRating)
            self.audienceRatingImage = audienceRatingImage
            self.childCount = childCount
            self.contentRating = contentRating
            self.country = country
            self.duration = duration
            self.genre = genre
            self.globalViewCount = globalViewCount
            self.guid = guid
            self.guids = guids
            self.index = index
            self.key = key
            self.leafCount = leafCount
            self.librarySectionID = librarySectionID
            self.librarySectionKey = librarySectionKey
            self.librarySectionTitle = librarySectionTitle
            self._originallyAvailableAt = DateOnly<Date?>(wrappedValue: originallyAvailableAt)
            self.ratingKey = ratingKey
            self.role = role
            self.slug = slug
            self.studio = studio
            self.summary = summary
            self.tagline = tagline
            self.thumb = thumb
            self.title = title
            self.type = type
            self.updatedAt = updatedAt
            self.user = user
            self.viewedLeafCount = viewedLeafCount
            self.year = year
        }
    }}

extension Operations.GetTopWatchedContentMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case art
        case audienceRating
        case audienceRatingImage
        case childCount
        case contentRating
        case country = "Country"
        case duration
        case genre = "Genre"
        case globalViewCount
        case guid
        case guids = "Guid"
        case index
        case key
        case leafCount
        case librarySectionID
        case librarySectionKey
        case librarySectionTitle
        case originallyAvailableAt
        case ratingKey
        case role = "Role"
        case slug
        case studio
        case summary
        case tagline
        case thumb
        case title
        case type
        case updatedAt
        case user = "User"
        case viewedLeafCount
        case year
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedAt = try container.decodeIfPresent(Int.self, forKey: .addedAt)
        self.art = try container.decodeIfPresent(String.self, forKey: .art)
        self._audienceRating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .audienceRating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audienceRatingImage = try container.decodeIfPresent(String.self, forKey: .audienceRatingImage)
        self.childCount = try container.decodeIfPresent(Int.self, forKey: .childCount)
        self.contentRating = try container.decodeIfPresent(String.self, forKey: .contentRating)
        self.country = try container.decodeIfPresent([Operations.GetTopWatchedContentCountry].self, forKey: .country)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.genre = try container.decodeIfPresent([Operations.GetTopWatchedContentGenre].self, forKey: .genre)
        self.globalViewCount = try container.decodeIfPresent(Int.self, forKey: .globalViewCount)
        self.guid = try container.decodeIfPresent(String.self, forKey: .guid)
        self.guids = try container.decodeIfPresent([Operations.GetTopWatchedContentGuids].self, forKey: .guids)
        self.index = try container.decodeIfPresent(Int.self, forKey: .index)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self.leafCount = try container.decodeIfPresent(Int.self, forKey: .leafCount)
        self.librarySectionID = try container.decodeIfPresent(Int.self, forKey: .librarySectionID)
        self.librarySectionKey = try container.decodeIfPresent(String.self, forKey: .librarySectionKey)
        self.librarySectionTitle = try container.decodeIfPresent(String.self, forKey: .librarySectionTitle)
        self._originallyAvailableAt = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .originallyAvailableAt) ?? DateOnly<Date?>(wrappedValue: nil)
        self.ratingKey = try container.decodeIfPresent(String.self, forKey: .ratingKey)
        self.role = try container.decodeIfPresent([Operations.GetTopWatchedContentRole].self, forKey: .role)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.studio = try container.decodeIfPresent(String.self, forKey: .studio)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.tagline = try container.decodeIfPresent(String.self, forKey: .tagline)
        self.thumb = try container.decodeIfPresent(String.self, forKey: .thumb)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.updatedAt = try container.decodeIfPresent(Int.self, forKey: .updatedAt)
        self.user = try container.decodeIfPresent([Operations.GetTopWatchedContentUser].self, forKey: .user)
        self.viewedLeafCount = try container.decodeIfPresent(Int.self, forKey: .viewedLeafCount)
        self.year = try container.decodeIfPresent(Int.self, forKey: .year)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.addedAt, forKey: .addedAt)
        try container.encodeIfPresent(self.art, forKey: .art)
        if self.audienceRating != nil {
            try container.encode(self._audienceRating, forKey: .audienceRating)
        }
        try container.encodeIfPresent(self.audienceRatingImage, forKey: .audienceRatingImage)
        try container.encodeIfPresent(self.childCount, forKey: .childCount)
        try container.encodeIfPresent(self.contentRating, forKey: .contentRating)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.genre, forKey: .genre)
        try container.encodeIfPresent(self.globalViewCount, forKey: .globalViewCount)
        try container.encodeIfPresent(self.guid, forKey: .guid)
        try container.encodeIfPresent(self.guids, forKey: .guids)
        try container.encodeIfPresent(self.index, forKey: .index)
        try container.encodeIfPresent(self.key, forKey: .key)
        try container.encodeIfPresent(self.leafCount, forKey: .leafCount)
        try container.encodeIfPresent(self.librarySectionID, forKey: .librarySectionID)
        try container.encodeIfPresent(self.librarySectionKey, forKey: .librarySectionKey)
        try container.encodeIfPresent(self.librarySectionTitle, forKey: .librarySectionTitle)
        if self.originallyAvailableAt != nil {
            try container.encode(self._originallyAvailableAt, forKey: .originallyAvailableAt)
        }
        try container.encodeIfPresent(self.ratingKey, forKey: .ratingKey)
        try container.encodeIfPresent(self.role, forKey: .role)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encodeIfPresent(self.studio, forKey: .studio)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.tagline, forKey: .tagline)
        try container.encodeIfPresent(self.thumb, forKey: .thumb)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.user, forKey: .user)
        try container.encodeIfPresent(self.viewedLeafCount, forKey: .viewedLeafCount)
        try container.encodeIfPresent(self.year, forKey: .year)
    }
}

extension Operations.GetTopWatchedContentMetadata {
    var audienceRatingWrapper: DecimalSerialized<Double?> {
        return _audienceRating
    }
    var originallyAvailableAtWrapper: DateOnly<Date?> {
        return _originallyAvailableAt
    }
}
