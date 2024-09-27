// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    /// 
    public struct GetRecentlyAddedLibraryMediaContainer {
        public let allowSync: Bool?
        public let fieldType: [Operations.FieldType]?
        public let identifier: String?
        public let mediaTagPrefix: String?
        @DecimalSerialized
        public private(set) var mediaTagVersion: Double?
        public let metadata: [Operations.GetRecentlyAddedLibraryMetadata]?
        public let mixedParents: Bool?
        @DecimalSerialized
        public private(set) var size: Double?
        public let type: [Operations.GetRecentlyAddedLibraryType]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(allowSync: Bool? = nil, fieldType: [Operations.FieldType]? = nil, identifier: String? = nil, mediaTagPrefix: String? = nil, mediaTagVersion: Double? = nil, metadata: [Operations.GetRecentlyAddedLibraryMetadata]? = nil, mixedParents: Bool? = nil, size: Double? = nil, type: [Operations.GetRecentlyAddedLibraryType]? = nil) {
            self.allowSync = allowSync
            self.fieldType = fieldType
            self.identifier = identifier
            self.mediaTagPrefix = mediaTagPrefix
            self._mediaTagVersion = DecimalSerialized<Double?>(wrappedValue: mediaTagVersion)
            self.metadata = metadata
            self.mixedParents = mixedParents
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self.type = type
        }
    }}

extension Operations.GetRecentlyAddedLibraryMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case allowSync
        case fieldType = "FieldType"
        case identifier
        case mediaTagPrefix
        case mediaTagVersion
        case metadata = "Metadata"
        case mixedParents
        case size
        case type = "Type"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.allowSync = try container.decodeIfPresent(Bool.self, forKey: .allowSync)
        self.fieldType = try container.decodeIfPresent([Operations.FieldType].self, forKey: .fieldType)
        self.identifier = try container.decodeIfPresent(String.self, forKey: .identifier)
        self.mediaTagPrefix = try container.decodeIfPresent(String.self, forKey: .mediaTagPrefix)
        self._mediaTagVersion = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .mediaTagVersion) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.metadata = try container.decodeIfPresent([Operations.GetRecentlyAddedLibraryMetadata].self, forKey: .metadata)
        self.mixedParents = try container.decodeIfPresent(Bool.self, forKey: .mixedParents)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.type = try container.decodeIfPresent([Operations.GetRecentlyAddedLibraryType].self, forKey: .type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.allowSync, forKey: .allowSync)
        try container.encodeIfPresent(self.fieldType, forKey: .fieldType)
        try container.encodeIfPresent(self.identifier, forKey: .identifier)
        try container.encodeIfPresent(self.mediaTagPrefix, forKey: .mediaTagPrefix)
        if self.mediaTagVersion != nil {
            try container.encode(self._mediaTagVersion, forKey: .mediaTagVersion)
        }
        try container.encodeIfPresent(self.metadata, forKey: .metadata)
        try container.encodeIfPresent(self.mixedParents, forKey: .mixedParents)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        try container.encodeIfPresent(self.type, forKey: .type)
    }
}

extension Operations.GetRecentlyAddedLibraryMediaContainer {
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
    var mediaTagVersionWrapper: DecimalSerialized<Double?> {
        return _mediaTagVersion
    }
}