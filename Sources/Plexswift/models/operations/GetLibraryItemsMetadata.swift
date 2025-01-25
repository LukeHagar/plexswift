// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryItemsMetadata {
        /// Unix epoch datetime in seconds
        public let addedAt: Int
        public let guid: String
        public let key: String
        /// The rating key (Media ID) of this media item.
        /// Note: This is always an integer, but is represented as a string in the API.
        /// 
        public let ratingKey: String
        public let summary: String
        public let title: String
        /// The type of media content
        /// 
        public let type: Operations.GetLibraryItemsLibraryType
        public let art: String?
        @DecimalSerialized
        public private(set) var audienceRating: Double?
        public let audienceRatingImage: String?
        public let banner: String?
        public let chapterSource: String?
        public let childCount: Int?
        public let collection: [Operations.GetLibraryItemsCollection]?
        public let contentRating: String?
        public let country: [Operations.GetLibraryItemsCountry]?
        public let director: [Operations.GetLibraryItemsDirector]?
        public let duration: Int?
        /// Setting that indicates if credits markers detection is enabled. (-1 = Library default, 0 = Disabled).
        public let enableCreditsMarkerGeneration: Operations.GetLibraryItemsEnableCreditsMarkerGeneration?
        /// Setting that indicates how episodes are sorted for the show. (-1 = Library default, 0 = Oldest first, 1 = Newest first).
        public let episodeSort: Operations.GetLibraryItemsEpisodeSort?
        /// Setting that indicates if seasons are set to hidden for the show. (-1 = Library default, 0 = Hide, 1 = Show).
        public let flattenSeasons: Operations.GetLibraryItemsFlattenSeasons?
        public let genre: [Operations.GetLibraryItemsGenre]?
        public let grandparentArt: String?
        public let grandparentGuid: String?
        public let grandparentKey: String?
        public let grandparentRatingKey: String?
        public let grandparentSlug: String?
        public let grandparentTheme: String?
        public let grandparentThumb: String?
        public let grandparentTitle: String?
        public let hasPremiumExtras: String?
        public let hasPremiumPrimaryExtra: String?
        public let image: [Operations.GetLibraryItemsImage]?
        public let index: Int?
        public let lastViewedAt: Int?
        public let leafCount: Int?
        public let librarySectionID: Int?
        public let librarySectionKey: String?
        public let librarySectionTitle: String?
        public let location: [Operations.GetLibraryItemsLocation]?
        /// The Media object is only included when type query is `4` or higher.
        /// 
        public let media: [Operations.GetLibraryItemsMedia]?
        /// The Guid object is only included in the response if the `includeGuids` parameter is set to `1`.
        /// 
        public let mediaGuid: [Operations.GetLibraryItemsMediaGuid]?
        public let metaDataRating: [Operations.GetLibraryItemsMetaDataRating]?
        @DateOnly
        public private(set) var originallyAvailableAt: Date?
        public let originalTitle: String?
        public let parentGuid: String?
        public let parentIndex: Int?
        public let parentKey: String?
        /// The rating key of the parent item.
        /// 
        public let parentRatingKey: String?
        public let parentSlug: String?
        public let parentStudio: String?
        public let parentTheme: String?
        public let parentThumb: String?
        public let parentTitle: String?
        public let parentYear: Int?
        public let primaryExtraKey: String?
        @DecimalSerialized
        public private(set) var rating: Double?
        public let ratingImage: String?
        public let role: [Operations.GetLibraryItemsRole]?
        public let seasonCount: Int?
        /// Setting that indicates the episode ordering for the show
        /// None = Library default,
        /// tmdbAiring = The Movie Database (Aired),
        /// tvdbAiring = TheTVDB (Aired),
        /// tvdbDvd = TheTVDB (DVD),
        /// tvdbAbsolute = TheTVDB (Absolute)).
        /// 
        public let showOrdering: Operations.GetLibraryItemsShowOrdering?
        public let skipChildren: Bool?
        public let skipCount: Int?
        public let slug: String?
        public let studio: String?
        public let tagline: String?
        public let theme: String?
        public let thumb: String?
        public let titleSort: String?
        public let ultraBlurColors: Operations.GetLibraryItemsUltraBlurColors?
        /// Unix epoch datetime in seconds
        public let updatedAt: Int?
        public let viewCount: Int?
        public let viewedLeafCount: Int?
        public let viewOffset: Int?
        public let writer: [Operations.GetLibraryItemsWriter]?
        public let year: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter addedAt: Unix epoch datetime in seconds
        /// - Parameter ratingKey: The rating key (Media ID) of this media item.
        /// Note: This is always an integer, but is represented as a string in the API.
        /// 
        /// - Parameter type: The type of media content
        /// 
        /// - Parameter enableCreditsMarkerGeneration: Setting that indicates if credits markers detection is enabled. (-1 = Library default, 0 = Disabled).
        /// - Parameter episodeSort: Setting that indicates how episodes are sorted for the show. (-1 = Library default, 0 = Oldest first, 1 = Newest first).
        /// - Parameter flattenSeasons: Setting that indicates if seasons are set to hidden for the show. (-1 = Library default, 0 = Hide, 1 = Show).
        /// - Parameter media: The Media object is only included when type query is `4` or higher.
        /// 
        /// - Parameter mediaGuid: The Guid object is only included in the response if the `includeGuids` parameter is set to `1`.
        /// 
        /// - Parameter parentRatingKey: The rating key of the parent item.
        /// 
        /// - Parameter showOrdering: Setting that indicates the episode ordering for the show
        /// None = Library default,
        /// tmdbAiring = The Movie Database (Aired),
        /// tvdbAiring = TheTVDB (Aired),
        /// tvdbDvd = TheTVDB (DVD),
        /// tvdbAbsolute = TheTVDB (Absolute)).
        /// 
        /// - Parameter updatedAt: Unix epoch datetime in seconds
        ///
        public init(addedAt: Int, guid: String, key: String, ratingKey: String, summary: String, title: String, type: Operations.GetLibraryItemsLibraryType, art: String? = nil, audienceRating: Double? = nil, audienceRatingImage: String? = nil, banner: String? = nil, chapterSource: String? = nil, childCount: Int? = nil, collection: [Operations.GetLibraryItemsCollection]? = nil, contentRating: String? = nil, country: [Operations.GetLibraryItemsCountry]? = nil, director: [Operations.GetLibraryItemsDirector]? = nil, duration: Int? = nil, enableCreditsMarkerGeneration: Operations.GetLibraryItemsEnableCreditsMarkerGeneration? = nil, episodeSort: Operations.GetLibraryItemsEpisodeSort? = nil, flattenSeasons: Operations.GetLibraryItemsFlattenSeasons? = nil, genre: [Operations.GetLibraryItemsGenre]? = nil, grandparentArt: String? = nil, grandparentGuid: String? = nil, grandparentKey: String? = nil, grandparentRatingKey: String? = nil, grandparentSlug: String? = nil, grandparentTheme: String? = nil, grandparentThumb: String? = nil, grandparentTitle: String? = nil, hasPremiumExtras: String? = nil, hasPremiumPrimaryExtra: String? = nil, image: [Operations.GetLibraryItemsImage]? = nil, index: Int? = nil, lastViewedAt: Int? = nil, leafCount: Int? = nil, librarySectionID: Int? = nil, librarySectionKey: String? = nil, librarySectionTitle: String? = nil, location: [Operations.GetLibraryItemsLocation]? = nil, media: [Operations.GetLibraryItemsMedia]? = nil, mediaGuid: [Operations.GetLibraryItemsMediaGuid]? = nil, metaDataRating: [Operations.GetLibraryItemsMetaDataRating]? = nil, originallyAvailableAt: Date? = nil, originalTitle: String? = nil, parentGuid: String? = nil, parentIndex: Int? = nil, parentKey: String? = nil, parentRatingKey: String? = nil, parentSlug: String? = nil, parentStudio: String? = nil, parentTheme: String? = nil, parentThumb: String? = nil, parentTitle: String? = nil, parentYear: Int? = nil, primaryExtraKey: String? = nil, rating: Double? = nil, ratingImage: String? = nil, role: [Operations.GetLibraryItemsRole]? = nil, seasonCount: Int? = nil, showOrdering: Operations.GetLibraryItemsShowOrdering? = nil, skipChildren: Bool? = nil, skipCount: Int? = nil, slug: String? = nil, studio: String? = nil, tagline: String? = nil, theme: String? = nil, thumb: String? = nil, titleSort: String? = nil, ultraBlurColors: Operations.GetLibraryItemsUltraBlurColors? = nil, updatedAt: Int? = nil, viewCount: Int? = nil, viewedLeafCount: Int? = nil, viewOffset: Int? = nil, writer: [Operations.GetLibraryItemsWriter]? = nil, year: Int? = nil) {
            self.addedAt = addedAt
            self.guid = guid
            self.key = key
            self.ratingKey = ratingKey
            self.summary = summary
            self.title = title
            self.type = type
            self.art = art
            self._audienceRating = DecimalSerialized<Double?>(wrappedValue: audienceRating)
            self.audienceRatingImage = audienceRatingImage
            self.banner = banner
            self.chapterSource = chapterSource
            self.childCount = childCount
            self.collection = collection
            self.contentRating = contentRating
            self.country = country
            self.director = director
            self.duration = duration
            self.enableCreditsMarkerGeneration = enableCreditsMarkerGeneration
            self.episodeSort = episodeSort
            self.flattenSeasons = flattenSeasons
            self.genre = genre
            self.grandparentArt = grandparentArt
            self.grandparentGuid = grandparentGuid
            self.grandparentKey = grandparentKey
            self.grandparentRatingKey = grandparentRatingKey
            self.grandparentSlug = grandparentSlug
            self.grandparentTheme = grandparentTheme
            self.grandparentThumb = grandparentThumb
            self.grandparentTitle = grandparentTitle
            self.hasPremiumExtras = hasPremiumExtras
            self.hasPremiumPrimaryExtra = hasPremiumPrimaryExtra
            self.image = image
            self.index = index
            self.lastViewedAt = lastViewedAt
            self.leafCount = leafCount
            self.librarySectionID = librarySectionID
            self.librarySectionKey = librarySectionKey
            self.librarySectionTitle = librarySectionTitle
            self.location = location
            self.media = media
            self.mediaGuid = mediaGuid
            self.metaDataRating = metaDataRating
            self._originallyAvailableAt = DateOnly<Date?>(wrappedValue: originallyAvailableAt)
            self.originalTitle = originalTitle
            self.parentGuid = parentGuid
            self.parentIndex = parentIndex
            self.parentKey = parentKey
            self.parentRatingKey = parentRatingKey
            self.parentSlug = parentSlug
            self.parentStudio = parentStudio
            self.parentTheme = parentTheme
            self.parentThumb = parentThumb
            self.parentTitle = parentTitle
            self.parentYear = parentYear
            self.primaryExtraKey = primaryExtraKey
            self._rating = DecimalSerialized<Double?>(wrappedValue: rating)
            self.ratingImage = ratingImage
            self.role = role
            self.seasonCount = seasonCount
            self.showOrdering = showOrdering
            self.skipChildren = skipChildren
            self.skipCount = skipCount
            self.slug = slug
            self.studio = studio
            self.tagline = tagline
            self.theme = theme
            self.thumb = thumb
            self.titleSort = titleSort
            self.ultraBlurColors = ultraBlurColors
            self.updatedAt = updatedAt
            self.viewCount = viewCount
            self.viewedLeafCount = viewedLeafCount
            self.viewOffset = viewOffset
            self.writer = writer
            self.year = year
        }
    }}

extension Operations.GetLibraryItemsMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case guid
        case key
        case ratingKey
        case summary
        case title
        case type
        case art
        case audienceRating
        case audienceRatingImage
        case banner
        case chapterSource
        case childCount
        case collection = "Collection"
        case contentRating
        case country = "Country"
        case director = "Director"
        case duration
        case enableCreditsMarkerGeneration
        case episodeSort
        case flattenSeasons
        case genre = "Genre"
        case grandparentArt
        case grandparentGuid
        case grandparentKey
        case grandparentRatingKey
        case grandparentSlug
        case grandparentTheme
        case grandparentThumb
        case grandparentTitle
        case hasPremiumExtras
        case hasPremiumPrimaryExtra
        case image = "Image"
        case index
        case lastViewedAt
        case leafCount
        case librarySectionID
        case librarySectionKey
        case librarySectionTitle
        case location = "Location"
        case media = "Media"
        case mediaGuid = "Guid"
        case metaDataRating = "Rating"
        case originallyAvailableAt
        case originalTitle
        case parentGuid
        case parentIndex
        case parentKey
        case parentRatingKey
        case parentSlug
        case parentStudio
        case parentTheme
        case parentThumb
        case parentTitle
        case parentYear
        case primaryExtraKey
        case rating
        case ratingImage
        case role = "Role"
        case seasonCount
        case showOrdering
        case skipChildren
        case skipCount
        case slug
        case studio
        case tagline
        case theme
        case thumb
        case titleSort
        case ultraBlurColors = "UltraBlurColors"
        case updatedAt
        case viewCount
        case viewedLeafCount
        case viewOffset
        case writer = "Writer"
        case year
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedAt = try container.decode(Int.self, forKey: .addedAt)
        self.guid = try container.decode(String.self, forKey: .guid)
        self.key = try container.decode(String.self, forKey: .key)
        self.ratingKey = try container.decode(String.self, forKey: .ratingKey)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.title = try container.decode(String.self, forKey: .title)
        self.type = try container.decode(Operations.GetLibraryItemsLibraryType.self, forKey: .type)
        self.art = try container.decodeIfPresent(String.self, forKey: .art)
        self._audienceRating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .audienceRating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audienceRatingImage = try container.decodeIfPresent(String.self, forKey: .audienceRatingImage)
        self.banner = try container.decodeIfPresent(String.self, forKey: .banner)
        self.chapterSource = try container.decodeIfPresent(String.self, forKey: .chapterSource)
        self.childCount = try container.decodeIfPresent(Int.self, forKey: .childCount)
        self.collection = try container.decodeIfPresent([Operations.GetLibraryItemsCollection].self, forKey: .collection)
        self.contentRating = try container.decodeIfPresent(String.self, forKey: .contentRating)
        self.country = try container.decodeIfPresent([Operations.GetLibraryItemsCountry].self, forKey: .country)
        self.director = try container.decodeIfPresent([Operations.GetLibraryItemsDirector].self, forKey: .director)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.enableCreditsMarkerGeneration = try container.decodeIfPresent(Operations.GetLibraryItemsEnableCreditsMarkerGeneration.self, forKey: .enableCreditsMarkerGeneration)
        self.episodeSort = try container.decodeIfPresent(Operations.GetLibraryItemsEpisodeSort.self, forKey: .episodeSort)
        self.flattenSeasons = try container.decodeIfPresent(Operations.GetLibraryItemsFlattenSeasons.self, forKey: .flattenSeasons)
        self.genre = try container.decodeIfPresent([Operations.GetLibraryItemsGenre].self, forKey: .genre)
        self.grandparentArt = try container.decodeIfPresent(String.self, forKey: .grandparentArt)
        self.grandparentGuid = try container.decodeIfPresent(String.self, forKey: .grandparentGuid)
        self.grandparentKey = try container.decodeIfPresent(String.self, forKey: .grandparentKey)
        self.grandparentRatingKey = try container.decodeIfPresent(String.self, forKey: .grandparentRatingKey)
        self.grandparentSlug = try container.decodeIfPresent(String.self, forKey: .grandparentSlug)
        self.grandparentTheme = try container.decodeIfPresent(String.self, forKey: .grandparentTheme)
        self.grandparentThumb = try container.decodeIfPresent(String.self, forKey: .grandparentThumb)
        self.grandparentTitle = try container.decodeIfPresent(String.self, forKey: .grandparentTitle)
        self.hasPremiumExtras = try container.decodeIfPresent(String.self, forKey: .hasPremiumExtras)
        self.hasPremiumPrimaryExtra = try container.decodeIfPresent(String.self, forKey: .hasPremiumPrimaryExtra)
        self.image = try container.decodeIfPresent([Operations.GetLibraryItemsImage].self, forKey: .image)
        self.index = try container.decodeIfPresent(Int.self, forKey: .index)
        self.lastViewedAt = try container.decodeIfPresent(Int.self, forKey: .lastViewedAt)
        self.leafCount = try container.decodeIfPresent(Int.self, forKey: .leafCount)
        self.librarySectionID = try container.decodeIfPresent(Int.self, forKey: .librarySectionID)
        self.librarySectionKey = try container.decodeIfPresent(String.self, forKey: .librarySectionKey)
        self.librarySectionTitle = try container.decodeIfPresent(String.self, forKey: .librarySectionTitle)
        self.location = try container.decodeIfPresent([Operations.GetLibraryItemsLocation].self, forKey: .location)
        self.media = try container.decodeIfPresent([Operations.GetLibraryItemsMedia].self, forKey: .media)
        self.mediaGuid = try container.decodeIfPresent([Operations.GetLibraryItemsMediaGuid].self, forKey: .mediaGuid)
        self.metaDataRating = try container.decodeIfPresent([Operations.GetLibraryItemsMetaDataRating].self, forKey: .metaDataRating)
        self._originallyAvailableAt = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .originallyAvailableAt) ?? DateOnly<Date?>(wrappedValue: nil)
        self.originalTitle = try container.decodeIfPresent(String.self, forKey: .originalTitle)
        self.parentGuid = try container.decodeIfPresent(String.self, forKey: .parentGuid)
        self.parentIndex = try container.decodeIfPresent(Int.self, forKey: .parentIndex)
        self.parentKey = try container.decodeIfPresent(String.self, forKey: .parentKey)
        self.parentRatingKey = try container.decodeIfPresent(String.self, forKey: .parentRatingKey)
        self.parentSlug = try container.decodeIfPresent(String.self, forKey: .parentSlug)
        self.parentStudio = try container.decodeIfPresent(String.self, forKey: .parentStudio)
        self.parentTheme = try container.decodeIfPresent(String.self, forKey: .parentTheme)
        self.parentThumb = try container.decodeIfPresent(String.self, forKey: .parentThumb)
        self.parentTitle = try container.decodeIfPresent(String.self, forKey: .parentTitle)
        self.parentYear = try container.decodeIfPresent(Int.self, forKey: .parentYear)
        self.primaryExtraKey = try container.decodeIfPresent(String.self, forKey: .primaryExtraKey)
        self._rating = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .rating) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.ratingImage = try container.decodeIfPresent(String.self, forKey: .ratingImage)
        self.role = try container.decodeIfPresent([Operations.GetLibraryItemsRole].self, forKey: .role)
        self.seasonCount = try container.decodeIfPresent(Int.self, forKey: .seasonCount)
        self.showOrdering = try container.decodeIfPresent(Operations.GetLibraryItemsShowOrdering.self, forKey: .showOrdering)
        self.skipChildren = try container.decodeIfPresent(Bool.self, forKey: .skipChildren)
        self.skipCount = try container.decodeIfPresent(Int.self, forKey: .skipCount)
        self.slug = try container.decodeIfPresent(String.self, forKey: .slug)
        self.studio = try container.decodeIfPresent(String.self, forKey: .studio)
        self.tagline = try container.decodeIfPresent(String.self, forKey: .tagline)
        self.theme = try container.decodeIfPresent(String.self, forKey: .theme)
        self.thumb = try container.decodeIfPresent(String.self, forKey: .thumb)
        self.titleSort = try container.decodeIfPresent(String.self, forKey: .titleSort)
        self.ultraBlurColors = try container.decodeIfPresent(Operations.GetLibraryItemsUltraBlurColors.self, forKey: .ultraBlurColors)
        self.updatedAt = try container.decodeIfPresent(Int.self, forKey: .updatedAt)
        self.viewCount = try container.decodeIfPresent(Int.self, forKey: .viewCount)
        self.viewedLeafCount = try container.decodeIfPresent(Int.self, forKey: .viewedLeafCount)
        self.viewOffset = try container.decodeIfPresent(Int.self, forKey: .viewOffset)
        self.writer = try container.decodeIfPresent([Operations.GetLibraryItemsWriter].self, forKey: .writer)
        self.year = try container.decodeIfPresent(Int.self, forKey: .year)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.addedAt, forKey: .addedAt)
        try container.encode(self.guid, forKey: .guid)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.ratingKey, forKey: .ratingKey)
        try container.encode(self.summary, forKey: .summary)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.art, forKey: .art)
        if self.audienceRating != nil {
            try container.encode(self._audienceRating, forKey: .audienceRating)
        }
        try container.encodeIfPresent(self.audienceRatingImage, forKey: .audienceRatingImage)
        try container.encodeIfPresent(self.banner, forKey: .banner)
        try container.encodeIfPresent(self.chapterSource, forKey: .chapterSource)
        try container.encodeIfPresent(self.childCount, forKey: .childCount)
        try container.encodeIfPresent(self.collection, forKey: .collection)
        try container.encodeIfPresent(self.contentRating, forKey: .contentRating)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.director, forKey: .director)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.enableCreditsMarkerGeneration, forKey: .enableCreditsMarkerGeneration)
        try container.encodeIfPresent(self.episodeSort, forKey: .episodeSort)
        try container.encodeIfPresent(self.flattenSeasons, forKey: .flattenSeasons)
        try container.encodeIfPresent(self.genre, forKey: .genre)
        try container.encodeIfPresent(self.grandparentArt, forKey: .grandparentArt)
        try container.encodeIfPresent(self.grandparentGuid, forKey: .grandparentGuid)
        try container.encodeIfPresent(self.grandparentKey, forKey: .grandparentKey)
        try container.encodeIfPresent(self.grandparentRatingKey, forKey: .grandparentRatingKey)
        try container.encodeIfPresent(self.grandparentSlug, forKey: .grandparentSlug)
        try container.encodeIfPresent(self.grandparentTheme, forKey: .grandparentTheme)
        try container.encodeIfPresent(self.grandparentThumb, forKey: .grandparentThumb)
        try container.encodeIfPresent(self.grandparentTitle, forKey: .grandparentTitle)
        try container.encodeIfPresent(self.hasPremiumExtras, forKey: .hasPremiumExtras)
        try container.encodeIfPresent(self.hasPremiumPrimaryExtra, forKey: .hasPremiumPrimaryExtra)
        try container.encodeIfPresent(self.image, forKey: .image)
        try container.encodeIfPresent(self.index, forKey: .index)
        try container.encodeIfPresent(self.lastViewedAt, forKey: .lastViewedAt)
        try container.encodeIfPresent(self.leafCount, forKey: .leafCount)
        try container.encodeIfPresent(self.librarySectionID, forKey: .librarySectionID)
        try container.encodeIfPresent(self.librarySectionKey, forKey: .librarySectionKey)
        try container.encodeIfPresent(self.librarySectionTitle, forKey: .librarySectionTitle)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.media, forKey: .media)
        try container.encodeIfPresent(self.mediaGuid, forKey: .mediaGuid)
        try container.encodeIfPresent(self.metaDataRating, forKey: .metaDataRating)
        if self.originallyAvailableAt != nil {
            try container.encode(self._originallyAvailableAt, forKey: .originallyAvailableAt)
        }
        try container.encodeIfPresent(self.originalTitle, forKey: .originalTitle)
        try container.encodeIfPresent(self.parentGuid, forKey: .parentGuid)
        try container.encodeIfPresent(self.parentIndex, forKey: .parentIndex)
        try container.encodeIfPresent(self.parentKey, forKey: .parentKey)
        try container.encodeIfPresent(self.parentRatingKey, forKey: .parentRatingKey)
        try container.encodeIfPresent(self.parentSlug, forKey: .parentSlug)
        try container.encodeIfPresent(self.parentStudio, forKey: .parentStudio)
        try container.encodeIfPresent(self.parentTheme, forKey: .parentTheme)
        try container.encodeIfPresent(self.parentThumb, forKey: .parentThumb)
        try container.encodeIfPresent(self.parentTitle, forKey: .parentTitle)
        try container.encodeIfPresent(self.parentYear, forKey: .parentYear)
        try container.encodeIfPresent(self.primaryExtraKey, forKey: .primaryExtraKey)
        if self.rating != nil {
            try container.encode(self._rating, forKey: .rating)
        }
        try container.encodeIfPresent(self.ratingImage, forKey: .ratingImage)
        try container.encodeIfPresent(self.role, forKey: .role)
        try container.encodeIfPresent(self.seasonCount, forKey: .seasonCount)
        try container.encodeIfPresent(self.showOrdering, forKey: .showOrdering)
        try container.encodeIfPresent(self.skipChildren, forKey: .skipChildren)
        try container.encodeIfPresent(self.skipCount, forKey: .skipCount)
        try container.encodeIfPresent(self.slug, forKey: .slug)
        try container.encodeIfPresent(self.studio, forKey: .studio)
        try container.encodeIfPresent(self.tagline, forKey: .tagline)
        try container.encodeIfPresent(self.theme, forKey: .theme)
        try container.encodeIfPresent(self.thumb, forKey: .thumb)
        try container.encodeIfPresent(self.titleSort, forKey: .titleSort)
        try container.encodeIfPresent(self.ultraBlurColors, forKey: .ultraBlurColors)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.viewCount, forKey: .viewCount)
        try container.encodeIfPresent(self.viewedLeafCount, forKey: .viewedLeafCount)
        try container.encodeIfPresent(self.viewOffset, forKey: .viewOffset)
        try container.encodeIfPresent(self.writer, forKey: .writer)
        try container.encodeIfPresent(self.year, forKey: .year)
    }
}

extension Operations.GetLibraryItemsMetadata {
    var ratingWrapper: DecimalSerialized<Double?> {
        return _rating
    }
    var audienceRatingWrapper: DecimalSerialized<Double?> {
        return _audienceRating
    }
    var originallyAvailableAtWrapper: DateOnly<Date?> {
        return _originallyAvailableAt
    }
}
