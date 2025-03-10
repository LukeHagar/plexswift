// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMediaMetaDataMetadata {
        public let addedAt: Int
        /// URL of the art image.
        public let art: String
        /// Duration of the content in milliseconds.
        public let duration: Int
        /// The globally unique identifier for the item.
        public let guid: String
        /// An array of image objects.
        public let image: [Operations.GetMediaMetaDataImage]
        /// The API key to access metadata details.
        public let key: String
        /// The ID of the library section.
        public let librarySectionID: Int
        /// The key of the library section.
        public let librarySectionKey: String
        /// The title of the library section.
        public let librarySectionTitle: String
        /// The rating key of the metadata item.
        public let ratingKey: String
        /// A summary of the content.
        public let summary: String
        /// URL of the thumbnail image.
        public let thumb: String
        /// The title of the content.
        public let title: String
        /// The type of content (e.g., show, movie).
        public let type: String
        public let ultraBlurColors: Operations.GetMediaMetaDataUltraBlurColors
        public let updatedAt: Int
        /// The release year.
        public let year: Int
        /// The audience rating for the content.
        @DecimalSerialized
        public private(set) var audienceRating: Double?
        /// The URL for the audience rating image.
        public let audienceRatingImage: String?
        public let chapterSource: String?
        /// The number of child items.
        public let childCount: Int?
        /// The content rating (e.g., TV-MA).
        public let contentRating: String?
        /// An array of country tags.
        public let country: [Operations.GetMediaMetaDataCountry]?
        /// An array of Director roles.
        public let director: [Operations.GetMediaMetaDataDirector]?
        /// An array of genre tags.
        public let genre: [Operations.GetMediaMetaDataGenre]?
        /// The URL of the grandparent's art image.
        public let grandparentArt: String?
        /// A GUID identifying the grandparent entity (e.g., show).
        public let grandparentGuid: String?
        /// A key identifying the grandparent metadata in the library.
        public let grandparentKey: String?
        /// The rating key of the grandparent of this metadata item.
        public let grandparentRatingKey: String?
        /// A URL-friendly identifier (slug) for the grandparent entity.
        public let grandparentSlug: String?
        /// The URL of the grandparent's thumbnail image.
        public let grandparentThumb: String?
        /// The title of the grandparent entity (typically the show's title).
        public let grandparentTitle: String?
        /// An array of GUID objects.
        public let guids: [Operations.GetMediaMetaDataGuids]?
        /// The index or order of the item.
        public let index: Int?
        /// Unix timestamp of when the item was last viewed.
        public let lastViewedAt: Int?
        /// The total number of episodes (or leaves).
        public let leafCount: Int?
        /// An array of location objects.
        public let location: [Operations.GetMediaMetaDataLocation]?
        public let media: [Operations.GetMediaMetaDataMedia]?
        /// The original release date.
        @DateOnly
        public private(set) var originallyAvailableAt: Date?
        /// The original title of the content.
        public let originalTitle: String?
        /// A GUID identifying the parent entity (e.g., season) for the item.
        public let parentGuid: String?
        /// The index number of the parent entity, which could indicate its order or position.
        public let parentIndex: Int?
        /// A key identifying the parent metadata in the library.
        public let parentKey: String?
        /// The rating key of the parent of this metadata item.
        public let parentRatingKey: String?
        /// The URL of the parent's thumbnail image.
        public let parentThumb: String?
        /// The title of the parent entity (typically the season's title).
        public let parentTitle: String?
        public let primaryExtraKey: String?
        /// An array of Writer roles.
        public let producer: [Operations.GetMediaMetaDataProducer]?
        /// The general rating
        @DecimalSerialized
        public private(set) var rating: Double?
        /// The URL or identifier for the rating image (e.g., Rotten Tomatoes rating image).
        public let ratingImage: String?
        /// An array of rating objects.
        public let ratings: [Operations.Ratings]?
        /// An array of Actor roles.
        public let role: [Operations.GetMediaMetaDataRole]?
        /// An array of similar content objects.
        public let similar: [Operations.GetMediaMetaDataSimilar]?
        /// The number of times the item has been skipped.
        public let skipCount: Int?
        /// A URL-friendly identifier for the item.
        public let slug: String?
        /// The studio that produced the content.
        public let studio: String?
        /// The tagline of the content.
        public let tagline: String?
        /// URL of the theme image.
        public let theme: String?
        /// The number of times the item has been viewed.
        public let viewCount: Int?
        /// The number of episodes that have been viewed.
        public let viewedLeafCount: Int?
        /// An array of Writer roles.
        public let writer: [Operations.GetMediaMetaDataWriter]?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter art: URL of the art image.
        /// - Parameter duration: Duration of the content in milliseconds.
        /// - Parameter guid: The globally unique identifier for the item.
        /// - Parameter image: An array of image objects.
        /// - Parameter key: The API key to access metadata details.
        /// - Parameter librarySectionID: The ID of the library section.
        /// - Parameter librarySectionKey: The key of the library section.
        /// - Parameter librarySectionTitle: The title of the library section.
        /// - Parameter ratingKey: The rating key of the metadata item.
        /// - Parameter summary: A summary of the content.
        /// - Parameter thumb: URL of the thumbnail image.
        /// - Parameter title: The title of the content.
        /// - Parameter type: The type of content (e.g., show, movie).
        /// - Parameter year: The release year.
        /// - Parameter audienceRating: The audience rating for the content.
        /// - Parameter audienceRatingImage: The URL for the audience rating image.
        /// - Parameter childCount: The number of child items.
        /// - Parameter contentRating: The content rating (e.g., TV-MA).
        /// - Parameter country: An array of country tags.
        /// - Parameter director: An array of Director roles.
        /// - Parameter genre: An array of genre tags.
        /// - Parameter grandparentArt: The URL of the grandparent's art image.
        /// - Parameter grandparentGuid: A GUID identifying the grandparent entity (e.g., show).
        /// - Parameter grandparentKey: A key identifying the grandparent metadata in the library.
        /// - Parameter grandparentRatingKey: The rating key of the grandparent of this metadata item.
        /// - Parameter grandparentSlug: A URL-friendly identifier (slug) for the grandparent entity.
        /// - Parameter grandparentThumb: The URL of the grandparent's thumbnail image.
        /// - Parameter grandparentTitle: The title of the grandparent entity (typically the show's title).
        /// - Parameter guids: An array of GUID objects.
        /// - Parameter index: The index or order of the item.
        /// - Parameter lastViewedAt: Unix timestamp of when the item was last viewed.
        /// - Parameter leafCount: The total number of episodes (or leaves).
        /// - Parameter location: An array of location objects.
        /// - Parameter originallyAvailableAt: The original release date.
        /// - Parameter originalTitle: The original title of the content.
        /// - Parameter parentGuid: A GUID identifying the parent entity (e.g., season) for the item.
        /// - Parameter parentIndex: The index number of the parent entity, which could indicate its order or position.
        /// - Parameter parentKey: A key identifying the parent metadata in the library.
        /// - Parameter parentRatingKey: The rating key of the parent of this metadata item.
        /// - Parameter parentThumb: The URL of the parent's thumbnail image.
        /// - Parameter parentTitle: The title of the parent entity (typically the season's title).
        /// - Parameter producer: An array of Writer roles.
        /// - Parameter rating: The general rating
        /// - Parameter ratingImage: The URL or identifier for the rating image (e.g., Rotten Tomatoes rating image).
        /// - Parameter ratings: An array of rating objects.
        /// - Parameter role: An array of Actor roles.
        /// - Parameter similar: An array of similar content objects.
        /// - Parameter skipCount: The number of times the item has been skipped.
        /// - Parameter slug: A URL-friendly identifier for the item.
        /// - Parameter studio: The studio that produced the content.
        /// - Parameter tagline: The tagline of the content.
        /// - Parameter theme: URL of the theme image.
        /// - Parameter viewCount: The number of times the item has been viewed.
        /// - Parameter viewedLeafCount: The number of episodes that have been viewed.
        /// - Parameter writer: An array of Writer roles.
        ///
        public init(addedAt: Int, art: String, duration: Int, guid: String, image: [Operations.GetMediaMetaDataImage], key: String, librarySectionID: Int, librarySectionKey: String, librarySectionTitle: String, ratingKey: String, summary: String, thumb: String, title: String, type: String, ultraBlurColors: Operations.GetMediaMetaDataUltraBlurColors, updatedAt: Int, year: Int, audienceRating: Double? = nil, audienceRatingImage: String? = nil, chapterSource: String? = nil, childCount: Int? = nil, contentRating: String? = nil, country: [Operations.GetMediaMetaDataCountry]? = nil, director: [Operations.GetMediaMetaDataDirector]? = nil, genre: [Operations.GetMediaMetaDataGenre]? = nil, grandparentArt: String? = nil, grandparentGuid: String? = nil, grandparentKey: String? = nil, grandparentRatingKey: String? = nil, grandparentSlug: String? = nil, grandparentThumb: String? = nil, grandparentTitle: String? = nil, guids: [Operations.GetMediaMetaDataGuids]? = nil, index: Int? = nil, lastViewedAt: Int? = nil, leafCount: Int? = nil, location: [Operations.GetMediaMetaDataLocation]? = nil, media: [Operations.GetMediaMetaDataMedia]? = nil, originallyAvailableAt: Date? = nil, originalTitle: String? = nil, parentGuid: String? = nil, parentIndex: Int? = nil, parentKey: String? = nil, parentRatingKey: String? = nil, parentThumb: String? = nil, parentTitle: String? = nil, primaryExtraKey: String? = nil, producer: [Operations.GetMediaMetaDataProducer]? = nil, rating: Double? = nil, ratingImage: String? = nil, ratings: [Operations.Ratings]? = nil, role: [Operations.GetMediaMetaDataRole]? = nil, similar: [Operations.GetMediaMetaDataSimilar]? = nil, skipCount: Int? = nil, slug: String? = nil, studio: String? = nil, tagline: String? = nil, theme: String? = nil, viewCount: Int? = nil, viewedLeafCount: Int? = nil, writer: [Operations.GetMediaMetaDataWriter]? = nil) {
            self.addedAt = addedAt
            self.art = art
            self.duration = duration
            self.guid = guid
            self.image = image
            self.key = key
            self.librarySectionID = librarySectionID
            self.librarySectionKey = librarySectionKey
            self.librarySectionTitle = librarySectionTitle
            self.ratingKey = ratingKey
            self.summary = summary
            self.thumb = thumb
            self.title = title
            self.type = type
            self.ultraBlurColors = ultraBlurColors
            self.updatedAt = updatedAt
            self.year = year
            self._audienceRating = DecimalSerialized<Double?>(wrappedValue: audienceRating)
            self.audienceRatingImage = audienceRatingImage
            self.chapterSource = chapterSource
            self.childCount = childCount
            self.contentRating = contentRating
            self.country = country
            self.director = director
            self.genre = genre
            self.grandparentArt = grandparentArt
            self.grandparentGuid = grandparentGuid
            self.grandparentKey = grandparentKey
            self.grandparentRatingKey = grandparentRatingKey
            self.grandparentSlug = grandparentSlug
            self.grandparentThumb = grandparentThumb
            self.grandparentTitle = grandparentTitle
            self.guids = guids
            self.index = index
            self.lastViewedAt = lastViewedAt
            self.leafCount = leafCount
            self.location = location
            self.media = media
            self._originallyAvailableAt = DateOnly<Date?>(wrappedValue: originallyAvailableAt)
            self.originalTitle = originalTitle
            self.parentGuid = parentGuid
            self.parentIndex = parentIndex
            self.parentKey = parentKey
            self.parentRatingKey = parentRatingKey
            self.parentThumb = parentThumb
            self.parentTitle = parentTitle
            self.primaryExtraKey = primaryExtraKey
            self.producer = producer
            self._rating = DecimalSerialized<Double?>(wrappedValue: rating)
            self.ratingImage = ratingImage
            self.ratings = ratings
            self.role = role
            self.similar = similar
            self.skipCount = skipCount
            self.slug = slug
            self.studio = studio
            self.tagline = tagline
            self.theme = theme
            self.viewCount = viewCount
            self.viewedLeafCount = viewedLeafCount
            self.writer = writer
        }
    }}

extension Operations.GetMediaMetaDataMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case art
        case duration
        case guid
        case image = "Image"
        case key
        case librarySectionID
        case librarySectionKey
        case librarySectionTitle
        case ratingKey
        case summary
        case thumb
        case title
        case type
        case ultraBlurColors = "UltraBlurColors"
        case updatedAt
        case year
        case audienceRating
        case audienceRatingImage
        case chapterSource
        case childCount
        case contentRating
        case country = "Country"
        case director = "Director"
        case genre = "Genre"
        case grandparentArt
        case grandparentGuid
        case grandparentKey
        case grandparentRatingKey
        case grandparentSlug
        case grandparentThumb
        case grandparentTitle
        case guids = "Guid"
        case index
        case lastViewedAt
        case leafCount
        case location = "Location"
        case media = "Media"
        case originallyAvailableAt
        case originalTitle
        case parentGuid
        case parentIndex
        case parentKey
        case parentRatingKey
        case parentThumb
        case parentTitle
        case primaryExtraKey
        case producer = "Producer"
        case rating
        case ratingImage
        case ratings = "Rating"
        case role = "Role"
        case similar = "Similar"
        case skipCount
        case slug
        case studio
        case tagline
        case theme
        case viewCount
        case viewedLeafCount
        case writer = "Writer"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedAt = try container.decode(Int.self, forKey: .addedAt)
        self.art = try container.decode(String.self, forKey: .art)
        self.duration = try container.decode(Int.self, forKey: .duration)
        self.guid = try container.decode(String.self, forKey: .guid)
        self.image = try container.decode([Operations.GetMediaMetaDataImage].self, forKey: .image)
        self.key = try container.decode(String.self, forKey: .key)
        self.librarySectionID = try container.decode(Int.self, forKey: .librarySectionID)
        self.librarySectionKey = try container.decode(String.self, forKey: .librarySectionKey)
        self.librarySectionTitle = try container.decode(String.self, forKey: .librarySectionTitle)
        self.ratingKey = try container.decode(String.self, forKey: .ratingKey)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.thumb = try container.decode(String.self, forKey: .thumb)
        self.title = try container.decode(String.self, forKey: .title)
        self.type = try container.decode(String.self, forKey: .type)
        self.ultraBlurColors = try container.decode(Operations.GetMediaMetaDataUltraBlurColors.self, forKey: .ultraBlurColors)
        self.updatedAt = try container.decode(Int.self, forKey: .updatedAt)
        self.year = try container.decode(Int.self, forKey: .year)
        self._audienceRating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .audienceRating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audienceRatingImage = try container.decodeIfPresent(String.self, forKey: .audienceRatingImage)
        self.chapterSource = try container.decodeIfPresent(String.self, forKey: .chapterSource)
        self.childCount = try container.decodeIfPresent(Int.self, forKey: .childCount)
        self.contentRating = try container.decodeIfPresent(String.self, forKey: .contentRating)
        self.country = try container.decodeIfPresent([Operations.GetMediaMetaDataCountry].self, forKey: .country)
        self.director = try container.decodeIfPresent([Operations.GetMediaMetaDataDirector].self, forKey: .director)
        self.genre = try container.decodeIfPresent([Operations.GetMediaMetaDataGenre].self, forKey: .genre)
        self.grandparentArt = try container.decodeIfPresent(String.self, forKey: .grandparentArt)
        self.grandparentGuid = try container.decodeIfPresent(String.self, forKey: .grandparentGuid)
        self.grandparentKey = try container.decodeIfPresent(String.self, forKey: .grandparentKey)
        self.grandparentRatingKey = try container.decodeIfPresent(String.self, forKey: .grandparentRatingKey)
        self.grandparentSlug = try container.decodeIfPresent(String.self, forKey: .grandparentSlug)
        self.grandparentThumb = try container.decodeIfPresent(String.self, forKey: .grandparentThumb)
        self.grandparentTitle = try container.decodeIfPresent(String.self, forKey: .grandparentTitle)
        self.guids = try container.decodeIfPresent([Operations.GetMediaMetaDataGuids].self, forKey: .guids)
        self.index = try container.decodeIfPresent(Int.self, forKey: .index)
        self.lastViewedAt = try container.decodeIfPresent(Int.self, forKey: .lastViewedAt)
        self.leafCount = try container.decodeIfPresent(Int.self, forKey: .leafCount)
        self.location = try container.decodeIfPresent([Operations.GetMediaMetaDataLocation].self, forKey: .location)
        self.media = try container.decodeIfPresent([Operations.GetMediaMetaDataMedia].self, forKey: .media)
        self._originallyAvailableAt = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .originallyAvailableAt) ?? DateOnly<Date?>(wrappedValue: nil)
        self.originalTitle = try container.decodeIfPresent(String.self, forKey: .originalTitle)
        self.parentGuid = try container.decodeIfPresent(String.self, forKey: .parentGuid)
        self.parentIndex = try container.decodeIfPresent(Int.self, forKey: .parentIndex)
        self.parentKey = try container.decodeIfPresent(String.self, forKey: .parentKey)
        self.parentRatingKey = try container.decodeIfPresent(String.self, forKey: .parentRatingKey)
        self.parentThumb = try container.decodeIfPresent(String.self, forKey: .parentThumb)
        self.parentTitle = try container.decodeIfPresent(String.self, forKey: .parentTitle)
        self.primaryExtraKey = try container.decodeIfPresent(String.self, forKey: .primaryExtraKey)
        self.producer = try container.decodeIfPresent([Operations.GetMediaMetaDataProducer].self, forKey: .producer)
        self._rating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .rating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.ratingImage = try container.decodeIfPresent(String.self, forKey: .ratingImage)
        self.ratings = try container.decodeIfPresent([Operations.Ratings].self, forKey: .ratings)
        self.role = try container.decodeIfPresent([Operations.GetMediaMetaDataRole].self, forKey: .role)
        self.similar = try container.decodeIfPresent([Operations.GetMediaMetaDataSimilar].self, forKey: .similar)
        self.skipCount = try container.decodeIfPresent(Int.self, forKey: .skipCount)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.studio = try container.decodeIfPresent(String.self, forKey: .studio)
        self.tagline = try container.decodeIfPresent(String.self, forKey: .tagline)
        self.theme = try container.decodeIfPresent(String.self, forKey: .theme)
        self.viewCount = try container.decodeIfPresent(Int.self, forKey: .viewCount)
        self.viewedLeafCount = try container.decodeIfPresent(Int.self, forKey: .viewedLeafCount)
        self.writer = try container.decodeIfPresent([Operations.GetMediaMetaDataWriter].self, forKey: .writer)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.addedAt, forKey: .addedAt)
        try container.encode(self.art, forKey: .art)
        try container.encode(self.duration, forKey: .duration)
        try container.encode(self.guid, forKey: .guid)
        try container.encode(self.image, forKey: .image)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.librarySectionID, forKey: .librarySectionID)
        try container.encode(self.librarySectionKey, forKey: .librarySectionKey)
        try container.encode(self.librarySectionTitle, forKey: .librarySectionTitle)
        try container.encode(self.ratingKey, forKey: .ratingKey)
        try container.encode(self.summary, forKey: .summary)
        try container.encode(self.thumb, forKey: .thumb)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.ultraBlurColors, forKey: .ultraBlurColors)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.year, forKey: .year)
        if self.audienceRating != nil {
            try container.encode(self._audienceRating, forKey: .audienceRating)
        }
        try container.encodeIfPresent(self.audienceRatingImage, forKey: .audienceRatingImage)
        try container.encodeIfPresent(self.chapterSource, forKey: .chapterSource)
        try container.encodeIfPresent(self.childCount, forKey: .childCount)
        try container.encodeIfPresent(self.contentRating, forKey: .contentRating)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.director, forKey: .director)
        try container.encodeIfPresent(self.genre, forKey: .genre)
        try container.encodeIfPresent(self.grandparentArt, forKey: .grandparentArt)
        try container.encodeIfPresent(self.grandparentGuid, forKey: .grandparentGuid)
        try container.encodeIfPresent(self.grandparentKey, forKey: .grandparentKey)
        try container.encodeIfPresent(self.grandparentRatingKey, forKey: .grandparentRatingKey)
        try container.encodeIfPresent(self.grandparentSlug, forKey: .grandparentSlug)
        try container.encodeIfPresent(self.grandparentThumb, forKey: .grandparentThumb)
        try container.encodeIfPresent(self.grandparentTitle, forKey: .grandparentTitle)
        try container.encodeIfPresent(self.guids, forKey: .guids)
        try container.encodeIfPresent(self.index, forKey: .index)
        try container.encodeIfPresent(self.lastViewedAt, forKey: .lastViewedAt)
        try container.encodeIfPresent(self.leafCount, forKey: .leafCount)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.media, forKey: .media)
        if self.originallyAvailableAt != nil {
            try container.encode(self._originallyAvailableAt, forKey: .originallyAvailableAt)
        }
        try container.encodeIfPresent(self.originalTitle, forKey: .originalTitle)
        try container.encodeIfPresent(self.parentGuid, forKey: .parentGuid)
        try container.encodeIfPresent(self.parentIndex, forKey: .parentIndex)
        try container.encodeIfPresent(self.parentKey, forKey: .parentKey)
        try container.encodeIfPresent(self.parentRatingKey, forKey: .parentRatingKey)
        try container.encodeIfPresent(self.parentThumb, forKey: .parentThumb)
        try container.encodeIfPresent(self.parentTitle, forKey: .parentTitle)
        try container.encodeIfPresent(self.primaryExtraKey, forKey: .primaryExtraKey)
        try container.encodeIfPresent(self.producer, forKey: .producer)
        if self.rating != nil {
            try container.encode(self._rating, forKey: .rating)
        }
        try container.encodeIfPresent(self.ratingImage, forKey: .ratingImage)
        try container.encodeIfPresent(self.ratings, forKey: .ratings)
        try container.encodeIfPresent(self.role, forKey: .role)
        try container.encodeIfPresent(self.similar, forKey: .similar)
        try container.encodeIfPresent(self.skipCount, forKey: .skipCount)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encodeIfPresent(self.studio, forKey: .studio)
        try container.encodeIfPresent(self.tagline, forKey: .tagline)
        try container.encodeIfPresent(self.theme, forKey: .theme)
        try container.encodeIfPresent(self.viewCount, forKey: .viewCount)
        try container.encodeIfPresent(self.viewedLeafCount, forKey: .viewedLeafCount)
        try container.encodeIfPresent(self.writer, forKey: .writer)
    }
}

extension Operations.GetMediaMetaDataMetadata {
    var audienceRatingWrapper: DecimalSerialized<Double?> {
        return _audienceRating
    }
    var ratingWrapper: DecimalSerialized<Double?> {
        return _rating
    }
    var originallyAvailableAtWrapper: DateOnly<Date?> {
        return _originallyAvailableAt
    }
}
