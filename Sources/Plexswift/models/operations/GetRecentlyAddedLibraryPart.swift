// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRecentlyAddedLibraryPart {
        public let container: String?
        @DecimalSerialized
        public private(set) var duration: Double?
        public let file: String?
        public let has64bitOffsets: Bool?
        @DecimalSerialized
        public private(set) var hasThumbnail: Double?
        @DecimalSerialized
        public private(set) var id: Double?
        public let key: String?
        public let optimizedForStreaming: Bool?
        @DecimalSerialized
        public private(set) var size: Double?
        public let videoProfile: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(container: String? = nil, duration: Double? = nil, file: String? = nil, has64bitOffsets: Bool? = nil, hasThumbnail: Double? = nil, id: Double? = nil, key: String? = nil, optimizedForStreaming: Bool? = nil, size: Double? = nil, videoProfile: String? = nil) {
            self.container = container
            self._duration = DecimalSerialized<Double?>(wrappedValue: duration)
            self.file = file
            self.has64bitOffsets = has64bitOffsets
            self._hasThumbnail = DecimalSerialized<Double?>(wrappedValue: hasThumbnail)
            self._id = DecimalSerialized<Double?>(wrappedValue: id)
            self.key = key
            self.optimizedForStreaming = optimizedForStreaming
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self.videoProfile = videoProfile
        }
    }}

extension Operations.GetRecentlyAddedLibraryPart: Codable {
    enum CodingKeys: String, CodingKey {
        case container
        case duration
        case file
        case has64bitOffsets
        case hasThumbnail
        case id
        case key
        case optimizedForStreaming
        case size
        case videoProfile
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.container = try container.decodeIfPresent(String.self, forKey: .container)
        self._duration = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .duration) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.file = try container.decodeIfPresent(String.self, forKey: .file)
        self.has64bitOffsets = try container.decodeIfPresent(Bool.self, forKey: .has64bitOffsets)
        self._hasThumbnail = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .hasThumbnail) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._id = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .id) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self.optimizedForStreaming = try container.decodeIfPresent(Bool.self, forKey: .optimizedForStreaming)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.videoProfile = try container.decodeIfPresent(String.self, forKey: .videoProfile)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.container, forKey: .container)
        if self.duration != nil {
            try container.encode(self._duration, forKey: .duration)
        }
        try container.encodeIfPresent(self.file, forKey: .file)
        try container.encodeIfPresent(self.has64bitOffsets, forKey: .has64bitOffsets)
        if self.hasThumbnail != nil {
            try container.encode(self._hasThumbnail, forKey: .hasThumbnail)
        }
        if self.id != nil {
            try container.encode(self._id, forKey: .id)
        }
        try container.encodeIfPresent(self.key, forKey: .key)
        try container.encodeIfPresent(self.optimizedForStreaming, forKey: .optimizedForStreaming)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        try container.encodeIfPresent(self.videoProfile, forKey: .videoProfile)
    }
}

extension Operations.GetRecentlyAddedLibraryPart {
    var idWrapper: DecimalSerialized<Double?> {
        return _id
    }
    var durationWrapper: DecimalSerialized<Double?> {
        return _duration
    }
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
    var hasThumbnailWrapper: DecimalSerialized<Double?> {
        return _hasThumbnail
    }
}