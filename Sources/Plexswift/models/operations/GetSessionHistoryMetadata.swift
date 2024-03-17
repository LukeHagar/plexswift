// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSessionHistoryMetadata {
        public let accountID: Int?
        public let deviceID: Int?
        public let grandparentArt: String?
        public let grandparentKey: String?
        public let grandparentThumb: String?
        public let grandparentTitle: String?
        public let historyKey: String?
        public let index: Int?
        public let key: String?
        public let librarySectionID: String?
        @DateOnly
        public private(set) var originallyAvailableAt: Date?
        public let parentIndex: Int?
        public let parentKey: String?
        public let parentThumb: String?
        public let ratingKey: String?
        public let thumb: String?
        public let title: String?
        public let type: String?
        public let viewedAt: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(accountID: Int? = nil, deviceID: Int? = nil, grandparentArt: String? = nil, grandparentKey: String? = nil, grandparentThumb: String? = nil, grandparentTitle: String? = nil, historyKey: String? = nil, index: Int? = nil, key: String? = nil, librarySectionID: String? = nil, originallyAvailableAt: Date? = nil, parentIndex: Int? = nil, parentKey: String? = nil, parentThumb: String? = nil, ratingKey: String? = nil, thumb: String? = nil, title: String? = nil, type: String? = nil, viewedAt: Int? = nil) {
            self.accountID = accountID
            self.deviceID = deviceID
            self.grandparentArt = grandparentArt
            self.grandparentKey = grandparentKey
            self.grandparentThumb = grandparentThumb
            self.grandparentTitle = grandparentTitle
            self.historyKey = historyKey
            self.index = index
            self.key = key
            self.librarySectionID = librarySectionID
            self._originallyAvailableAt = DateOnly<Date?>(wrappedValue: originallyAvailableAt)
            self.parentIndex = parentIndex
            self.parentKey = parentKey
            self.parentThumb = parentThumb
            self.ratingKey = ratingKey
            self.thumb = thumb
            self.title = title
            self.type = type
            self.viewedAt = viewedAt
        }
    }
}

extension Operations.GetSessionHistoryMetadata: Codable {
    enum CodingKeys: String, CodingKey {
        case accountID
        case deviceID
        case grandparentArt
        case grandparentKey
        case grandparentThumb
        case grandparentTitle
        case historyKey
        case index
        case key
        case librarySectionID
        case originallyAvailableAt
        case parentIndex
        case parentKey
        case parentThumb
        case ratingKey
        case thumb
        case title
        case type
        case viewedAt
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountID = try container.decodeIfPresent(Int.self, forKey: .accountID)
        self.deviceID = try container.decodeIfPresent(Int.self, forKey: .deviceID)
        self.grandparentArt = try container.decodeIfPresent(String.self, forKey: .grandparentArt)
        self.grandparentKey = try container.decodeIfPresent(String.self, forKey: .grandparentKey)
        self.grandparentThumb = try container.decodeIfPresent(String.self, forKey: .grandparentThumb)
        self.grandparentTitle = try container.decodeIfPresent(String.self, forKey: .grandparentTitle)
        self.historyKey = try container.decodeIfPresent(String.self, forKey: .historyKey)
        self.index = try container.decodeIfPresent(Int.self, forKey: .index)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self.librarySectionID = try container.decodeIfPresent(String.self, forKey: .librarySectionID)
        self._originallyAvailableAt = try container.decodeIfPresent(DateOnly<Date?>.self, forKey: .originallyAvailableAt) ?? DateOnly<Date?>(wrappedValue: nil)
        self.parentIndex = try container.decodeIfPresent(Int.self, forKey: .parentIndex)
        self.parentKey = try container.decodeIfPresent(String.self, forKey: .parentKey)
        self.parentThumb = try container.decodeIfPresent(String.self, forKey: .parentThumb)
        self.ratingKey = try container.decodeIfPresent(String.self, forKey: .ratingKey)
        self.thumb = try container.decodeIfPresent(String.self, forKey: .thumb)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.viewedAt = try container.decodeIfPresent(Int.self, forKey: .viewedAt)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.accountID, forKey: .accountID)
        try container.encodeIfPresent(self.deviceID, forKey: .deviceID)
        try container.encodeIfPresent(self.grandparentArt, forKey: .grandparentArt)
        try container.encodeIfPresent(self.grandparentKey, forKey: .grandparentKey)
        try container.encodeIfPresent(self.grandparentThumb, forKey: .grandparentThumb)
        try container.encodeIfPresent(self.grandparentTitle, forKey: .grandparentTitle)
        try container.encodeIfPresent(self.historyKey, forKey: .historyKey)
        try container.encodeIfPresent(self.index, forKey: .index)
        try container.encodeIfPresent(self.key, forKey: .key)
        try container.encodeIfPresent(self.librarySectionID, forKey: .librarySectionID)
        if self.originallyAvailableAt != nil {
            try container.encode(self._originallyAvailableAt, forKey: .originallyAvailableAt)
        }
        try container.encodeIfPresent(self.parentIndex, forKey: .parentIndex)
        try container.encodeIfPresent(self.parentKey, forKey: .parentKey)
        try container.encodeIfPresent(self.parentThumb, forKey: .parentThumb)
        try container.encodeIfPresent(self.ratingKey, forKey: .ratingKey)
        try container.encodeIfPresent(self.thumb, forKey: .thumb)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.viewedAt, forKey: .viewedAt)
    }
}

extension Operations.GetSessionHistoryMetadata {
    var originallyAvailableAtWrapper: DateOnly<Date?> {
        return _originallyAvailableAt
    }
}
