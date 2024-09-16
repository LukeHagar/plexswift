// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Metadata {
        public let addedAt: Int?
        public let art: String?
        @DecimalSerialized
        public private(set) var audienceRating: Double?
        public let audienceRatingImage: String?
        public let availabilityId: String?
        public let banner: String?
        public let childCount: Int?
        public let contentRating: String?
        public let duration: Int?
        public let expiresAt: Int?
        public let guid: String?
        public let image: [Operations.Image]?
        public let imdbRatingCount: Int?
        public let isContinuingSeries: Bool?
        public let key: String?
        public let leafCount: Int?
        @DateOnly
        public private(set) var originallyAvailableAt: Date?
        public let originalTitle: String?
        public let playableKey: String?
        public let publicPagesURL: String?
        @DecimalSerialized
        public private(set) var rating: Double?
        public let ratingImage: String?
        public let ratingKey: String?
        public let skipChildren: Bool?
        public let slug: String?
        public let streamingMediaId: String?
        public let studio: String?
        public let subtype: String?
        public let tagline: String?
        public let theme: String?
        public let thumb: String?
        public let title: String?
        public let type: String?
        public let userState: Bool?
        public let year: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(addedAt: Int? = nil, art: String? = nil, audienceRating: Double? = nil, audienceRatingImage: String? = nil, availabilityId: String? = nil, banner: String? = nil, childCount: Int? = nil, contentRating: String? = nil, duration: Int? = nil, expiresAt: Int? = nil, guid: String? = nil, image: [Operations.Image]? = nil, imdbRatingCount: Int? = nil, isContinuingSeries: Bool? = nil, key: String? = nil, leafCount: Int? = nil, originallyAvailableAt: Date? = nil, originalTitle: String? = nil, playableKey: String? = nil, publicPagesURL: String? = nil, rating: Double? = nil, ratingImage: String? = nil, ratingKey: String? = nil, skipChildren: Bool? = nil, slug: String? = nil, streamingMediaId: String? = nil, studio: String? = nil, subtype: String? = nil, tagline: String? = nil, theme: String? = nil, thumb: String? = nil, title: String? = nil, type: String? = nil, userState: Bool? = nil, year: Int? = nil) {
            self.addedAt = addedAt
            self.art = art
            self._audienceRating = DecimalSerialized<Double?>(wrappedValue: audienceRating)
            self.audienceRatingImage = audienceRatingImage
            self.availabilityId = availabilityId
            self.banner = banner
            self.childCount = childCount
            self.contentRating = contentRating
            self.duration = duration
            self.expiresAt = expiresAt
            self.guid = guid
            self.image = image
            self.imdbRatingCount = imdbRatingCount
            self.isContinuingSeries = isContinuingSeries
            self.key = key
            self.leafCount = leafCount
            self._originallyAvailableAt = DateOnly<Date?>(wrappedValue: originallyAvailableAt)
            self.originalTitle = originalTitle
            self.playableKey = playableKey
            self.publicPagesURL = publicPagesURL
            self._rating = DecimalSerialized<Double?>(wrappedValue: rating)
            self.ratingImage = ratingImage
            self.ratingKey = ratingKey
            self.skipChildren = skipChildren
            self.slug = slug
            self.streamingMediaId = streamingMediaId
            self.studio = studio
            self.subtype = subtype
            self.tagline = tagline
            self.theme = theme
            self.thumb = thumb
            self.title = title
            self.type = type
            self.userState = userState
            self.year = year
        }
    }}

extension Operations.Metadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case art
        case audienceRating
        case audienceRatingImage
        case availabilityId
        case banner
        case childCount
        case contentRating
        case duration
        case expiresAt
        case guid
        case image = "Image"
        case imdbRatingCount
        case isContinuingSeries
        case key
        case leafCount
        case originallyAvailableAt
        case originalTitle
        case playableKey
        case publicPagesURL
        case rating
        case ratingImage
        case ratingKey
        case skipChildren
        case slug
        case streamingMediaId
        case studio
        case subtype
        case tagline
        case theme
        case thumb
        case title
        case type
        case userState
        case year
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedAt = try container.decodeIfPresent(Int.self, forKey: .addedAt)
        self.art = try container.decodeIfPresent(String.self, forKey: .art)
        self._audienceRating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .audienceRating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audienceRatingImage = try container.decodeIfPresent(String.self, forKey: .audienceRatingImage)
        self.availabilityId = try container.decodeIfPresent(String.self, forKey: .availabilityId)
        self.banner = try container.decodeIfPresent(String.self, forKey: .banner)
        self.childCount = try container.decodeIfPresent(Int.self, forKey: .childCount)
        self.contentRating = try container.decodeIfPresent(String.self, forKey: .contentRating)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.expiresAt = try container.decodeIfPresent(Int.self, forKey: .expiresAt)
        self.guid = try container.decodeIfPresent(String.self, forKey: .guid)
        self.image = try container.decodeIfPresent([Operations.Image].self, forKey: .image)
        self.imdbRatingCount = try container.decodeIfPresent(Int.self, forKey: .imdbRatingCount)
        self.isContinuingSeries = try container.decodeIfPresent(Bool.self, forKey: .isContinuingSeries)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self.leafCount = try container.decodeIfPresent(Int.self, forKey: .leafCount)
        self._originallyAvailableAt = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .originallyAvailableAt) ?? DateOnly<Date?>(wrappedValue: nil)
        self.originalTitle = try container.decodeIfPresent(String.self, forKey: .originalTitle)
        self.playableKey = try container.decodeIfPresent(String.self, forKey: .playableKey)
        self.publicPagesURL = try container.decodeIfPresent(String.self, forKey: .publicPagesURL)
        self._rating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .rating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.ratingImage = try container.decodeIfPresent(String.self, forKey: .ratingImage)
        self.ratingKey = try container.decodeIfPresent(String.self, forKey: .ratingKey)
        self.skipChildren = try container.decodeIfPresent(Bool.self, forKey: .skipChildren)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.streamingMediaId = try container.decodeIfPresent(String.self, forKey: .streamingMediaId)
        self.studio = try container.decodeIfPresent(String.self, forKey: .studio)
        self.subtype = try container.decodeIfPresent(String.self, forKey: .subtype)
        self.tagline = try container.decodeIfPresent(String.self, forKey: .tagline)
        self.theme = try container.decodeIfPresent(String.self, forKey: .theme)
        self.thumb = try container.decodeIfPresent(String.self, forKey: .thumb)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.userState = try container.decodeIfPresent(Bool.self, forKey: .userState)
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
        try container.encodeIfPresent(self.availabilityId, forKey: .availabilityId)
        try container.encodeIfPresent(self.banner, forKey: .banner)
        try container.encodeIfPresent(self.childCount, forKey: .childCount)
        try container.encodeIfPresent(self.contentRating, forKey: .contentRating)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(self.guid, forKey: .guid)
        try container.encodeIfPresent(self.image, forKey: .image)
        try container.encodeIfPresent(self.imdbRatingCount, forKey: .imdbRatingCount)
        try container.encodeIfPresent(self.isContinuingSeries, forKey: .isContinuingSeries)
        try container.encodeIfPresent(self.key, forKey: .key)
        try container.encodeIfPresent(self.leafCount, forKey: .leafCount)
        if self.originallyAvailableAt != nil {
            try container.encode(self._originallyAvailableAt, forKey: .originallyAvailableAt)
        }
        try container.encodeIfPresent(self.originalTitle, forKey: .originalTitle)
        try container.encodeIfPresent(self.playableKey, forKey: .playableKey)
        try container.encodeIfPresent(self.publicPagesURL, forKey: .publicPagesURL)
        if self.rating != nil {
            try container.encode(self._rating, forKey: .rating)
        }
        try container.encodeIfPresent(self.ratingImage, forKey: .ratingImage)
        try container.encodeIfPresent(self.ratingKey, forKey: .ratingKey)
        try container.encodeIfPresent(self.skipChildren, forKey: .skipChildren)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encodeIfPresent(self.streamingMediaId, forKey: .streamingMediaId)
        try container.encodeIfPresent(self.studio, forKey: .studio)
        try container.encodeIfPresent(self.subtype, forKey: .subtype)
        try container.encodeIfPresent(self.tagline, forKey: .tagline)
        try container.encodeIfPresent(self.theme, forKey: .theme)
        try container.encodeIfPresent(self.thumb, forKey: .thumb)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.userState, forKey: .userState)
        try container.encodeIfPresent(self.year, forKey: .year)
    }
}

extension Operations.Metadata {
    var originallyAvailableAtWrapper: DateOnly<Date?> {
        return _originallyAvailableAt
    }
    var ratingWrapper: DecimalSerialized<Double?> {
        return _rating
    }
    var audienceRatingWrapper: DecimalSerialized<Double?> {
        return _audienceRating
    }
}
