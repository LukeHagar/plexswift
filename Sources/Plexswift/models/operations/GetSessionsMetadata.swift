// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSessionsMetadata {
        public let addedAt: Int?
        public let art: String?
        public let duration: Int?
        public let grandparentArt: String?
        public let grandparentGuid: String?
        public let grandparentKey: String?
        public let grandparentRatingKey: String?
        public let grandparentThumb: String?
        public let grandparentTitle: String?
        public let guid: String?
        public let index: Int?
        public let key: String?
        public let librarySectionID: String?
        public let librarySectionKey: String?
        public let librarySectionTitle: String?
        public let media: [Operations.GetSessionsMedia]?
        public let musicAnalysisVersion: String?
        /// The original untranslated name of the media item when non-english, or the track artist if an audio Item has an album artist
        public let originalTitle: String?
        public let parentGuid: String?
        public let parentIndex: Int?
        public let parentKey: String?
        public let parentRatingKey: String?
        public let parentStudio: String?
        public let parentThumb: String?
        public let parentTitle: String?
        public let parentYear: Int?
        public let player: Operations.Player?
        public let ratingCount: Int?
        public let ratingKey: String?
        public let session: Operations.Session?
        public let sessionKey: String?
        public let thumb: String?
        public let title: String?
        public let titleSort: String?
        public let type: String?
        public let updatedAt: Int?
        public let user: Operations.GetSessionsUser?
        public let viewOffset: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter originalTitle: The original untranslated name of the media item when non-english, or the track artist if an audio Item has an album artist
        ///
        public init(addedAt: Int? = nil, art: String? = nil, duration: Int? = nil, grandparentArt: String? = nil, grandparentGuid: String? = nil, grandparentKey: String? = nil, grandparentRatingKey: String? = nil, grandparentThumb: String? = nil, grandparentTitle: String? = nil, guid: String? = nil, index: Int? = nil, key: String? = nil, librarySectionID: String? = nil, librarySectionKey: String? = nil, librarySectionTitle: String? = nil, media: [Operations.GetSessionsMedia]? = nil, musicAnalysisVersion: String? = nil, originalTitle: String? = nil, parentGuid: String? = nil, parentIndex: Int? = nil, parentKey: String? = nil, parentRatingKey: String? = nil, parentStudio: String? = nil, parentThumb: String? = nil, parentTitle: String? = nil, parentYear: Int? = nil, player: Operations.Player? = nil, ratingCount: Int? = nil, ratingKey: String? = nil, session: Operations.Session? = nil, sessionKey: String? = nil, thumb: String? = nil, title: String? = nil, titleSort: String? = nil, type: String? = nil, updatedAt: Int? = nil, user: Operations.GetSessionsUser? = nil, viewOffset: Int? = nil) {
            self.addedAt = addedAt
            self.art = art
            self.duration = duration
            self.grandparentArt = grandparentArt
            self.grandparentGuid = grandparentGuid
            self.grandparentKey = grandparentKey
            self.grandparentRatingKey = grandparentRatingKey
            self.grandparentThumb = grandparentThumb
            self.grandparentTitle = grandparentTitle
            self.guid = guid
            self.index = index
            self.key = key
            self.librarySectionID = librarySectionID
            self.librarySectionKey = librarySectionKey
            self.librarySectionTitle = librarySectionTitle
            self.media = media
            self.musicAnalysisVersion = musicAnalysisVersion
            self.originalTitle = originalTitle
            self.parentGuid = parentGuid
            self.parentIndex = parentIndex
            self.parentKey = parentKey
            self.parentRatingKey = parentRatingKey
            self.parentStudio = parentStudio
            self.parentThumb = parentThumb
            self.parentTitle = parentTitle
            self.parentYear = parentYear
            self.player = player
            self.ratingCount = ratingCount
            self.ratingKey = ratingKey
            self.session = session
            self.sessionKey = sessionKey
            self.thumb = thumb
            self.title = title
            self.titleSort = titleSort
            self.type = type
            self.updatedAt = updatedAt
            self.user = user
            self.viewOffset = viewOffset
        }
    }}

extension Operations.GetSessionsMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case addedAt
        case art
        case duration
        case grandparentArt
        case grandparentGuid
        case grandparentKey
        case grandparentRatingKey
        case grandparentThumb
        case grandparentTitle
        case guid
        case index
        case key
        case librarySectionID
        case librarySectionKey
        case librarySectionTitle
        case media = "Media"
        case musicAnalysisVersion
        case originalTitle
        case parentGuid
        case parentIndex
        case parentKey
        case parentRatingKey
        case parentStudio
        case parentThumb
        case parentTitle
        case parentYear
        case player = "Player"
        case ratingCount
        case ratingKey
        case session = "Session"
        case sessionKey
        case thumb
        case title
        case titleSort
        case type
        case updatedAt
        case user = "User"
        case viewOffset
    }
}

