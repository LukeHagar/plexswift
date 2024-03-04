// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchResultsPart {
        public let audioProfile: String?
        public let container: String?
        @DecimalSerialized
        public private(set) var duration: Double?
        public let file: String?
        @DecimalSerialized
        public private(set) var id: Double?
        public let key: String?
        @DecimalSerialized
        public private(set) var size: Double?
        public let videoProfile: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(audioProfile: String? = nil, container: String? = nil, duration: Double? = nil, file: String? = nil, id: Double? = nil, key: String? = nil, size: Double? = nil, videoProfile: String? = nil) {
            self.audioProfile = audioProfile
            self.container = container
            self._duration = DecimalSerialized<Double?>(wrappedValue: duration)
            self.file = file
            self._id = DecimalSerialized<Double?>(wrappedValue: id)
            self.key = key
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self.videoProfile = videoProfile
        }
    }
}

extension Operations.GetSearchResultsPart: Codable {
    enum CodingKeys: String, CodingKey {
        case audioProfile
        case container
        case duration
        case file
        case id
        case key
        case size
        case videoProfile
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.audioProfile = try container.decodeIfPresent(String.self, forKey: .audioProfile)
        self.container = try container.decodeIfPresent(String.self, forKey: .container)
        self._duration = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .duration) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.file = try container.decodeIfPresent(String.self, forKey: .file)
        self._id = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .id) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.videoProfile = try container.decodeIfPresent(String.self, forKey: .videoProfile)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.audioProfile, forKey: .audioProfile)
        try container.encodeIfPresent(self.container, forKey: .container)
        if self.duration != nil {
            try container.encode(self._duration, forKey: .duration)
        }
        try container.encodeIfPresent(self.file, forKey: .file)
        if self.id != nil {
            try container.encode(self._id, forKey: .id)
        }
        try container.encodeIfPresent(self.key, forKey: .key)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        try container.encodeIfPresent(self.videoProfile, forKey: .videoProfile)
    }
}

extension Operations.GetSearchResultsPart {
    var idWrapper: DecimalSerialized<Double?> {
        return _id
    }
    var durationWrapper: DecimalSerialized<Double?> {
        return _duration
    }
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
}
