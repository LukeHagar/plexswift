// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchResultsMedia {
        @DecimalSerialized
        public private(set) var aspectRatio: Double?
        @DecimalSerialized
        public private(set) var audioChannels: Double?
        public let audioCodec: String?
        public let audioProfile: String?
        @DecimalSerialized
        public private(set) var bitrate: Double?
        public let container: String?
        @DecimalSerialized
        public private(set) var duration: Double?
        @DecimalSerialized
        public private(set) var height: Double?
        @DecimalSerialized
        public private(set) var id: Double?
        public let part: [Operations.GetSearchResultsPart]?
        public let videoCodec: String?
        public let videoFrameRate: String?
        public let videoProfile: String?
        @DecimalSerialized
        public private(set) var videoResolution: Double?
        @DecimalSerialized
        public private(set) var width: Double?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(aspectRatio: Double? = nil, audioChannels: Double? = nil, audioCodec: String? = nil, audioProfile: String? = nil, bitrate: Double? = nil, container: String? = nil, duration: Double? = nil, height: Double? = nil, id: Double? = nil, part: [Operations.GetSearchResultsPart]? = nil, videoCodec: String? = nil, videoFrameRate: String? = nil, videoProfile: String? = nil, videoResolution: Double? = nil, width: Double? = nil) {
            self._aspectRatio = DecimalSerialized<Double?>(wrappedValue: aspectRatio)
            self._audioChannels = DecimalSerialized<Double?>(wrappedValue: audioChannels)
            self.audioCodec = audioCodec
            self.audioProfile = audioProfile
            self._bitrate = DecimalSerialized<Double?>(wrappedValue: bitrate)
            self.container = container
            self._duration = DecimalSerialized<Double?>(wrappedValue: duration)
            self._height = DecimalSerialized<Double?>(wrappedValue: height)
            self._id = DecimalSerialized<Double?>(wrappedValue: id)
            self.part = part
            self.videoCodec = videoCodec
            self.videoFrameRate = videoFrameRate
            self.videoProfile = videoProfile
            self._videoResolution = DecimalSerialized<Double?>(wrappedValue: videoResolution)
            self._width = DecimalSerialized<Double?>(wrappedValue: width)
        }
    }}

extension Operations.GetSearchResultsMedia: Codable {
    enum CodingKeys: String, CodingKey {
        case aspectRatio
        case audioChannels
        case audioCodec
        case audioProfile
        case bitrate
        case container
        case duration
        case height
        case id
        case part = "Part"
        case videoCodec
        case videoFrameRate
        case videoProfile
        case videoResolution
        case width
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._aspectRatio = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .aspectRatio) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._audioChannels = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .audioChannels) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audioCodec = try container.decodeIfPresent(String.self, forKey: .audioCodec)
        self.audioProfile = try container.decodeIfPresent(String.self, forKey: .audioProfile)
        self._bitrate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .bitrate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.container = try container.decodeIfPresent(String.self, forKey: .container)
        self._duration = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .duration) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._height = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .height) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._id = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .id) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.part = try container.decodeIfPresent([Operations.GetSearchResultsPart].self, forKey: .part)
        self.videoCodec = try container.decodeIfPresent(String.self, forKey: .videoCodec)
        self.videoFrameRate = try container.decodeIfPresent(String.self, forKey: .videoFrameRate)
        self.videoProfile = try container.decodeIfPresent(String.self, forKey: .videoProfile)
        self._videoResolution = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .videoResolution) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._width = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .width) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.aspectRatio != nil {
            try container.encode(self._aspectRatio, forKey: .aspectRatio)
        }
        if self.audioChannels != nil {
            try container.encode(self._audioChannels, forKey: .audioChannels)
        }
        try container.encodeIfPresent(self.audioCodec, forKey: .audioCodec)
        try container.encodeIfPresent(self.audioProfile, forKey: .audioProfile)
        if self.bitrate != nil {
            try container.encode(self._bitrate, forKey: .bitrate)
        }
        try container.encodeIfPresent(self.container, forKey: .container)
        if self.duration != nil {
            try container.encode(self._duration, forKey: .duration)
        }
        if self.height != nil {
            try container.encode(self._height, forKey: .height)
        }
        if self.id != nil {
            try container.encode(self._id, forKey: .id)
        }
        try container.encodeIfPresent(self.part, forKey: .part)
        try container.encodeIfPresent(self.videoCodec, forKey: .videoCodec)
        try container.encodeIfPresent(self.videoFrameRate, forKey: .videoFrameRate)
        try container.encodeIfPresent(self.videoProfile, forKey: .videoProfile)
        if self.videoResolution != nil {
            try container.encode(self._videoResolution, forKey: .videoResolution)
        }
        if self.width != nil {
            try container.encode(self._width, forKey: .width)
        }
    }
}

extension Operations.GetSearchResultsMedia {
    var idWrapper: DecimalSerialized<Double?> {
        return _id
    }
    var durationWrapper: DecimalSerialized<Double?> {
        return _duration
    }
    var bitrateWrapper: DecimalSerialized<Double?> {
        return _bitrate
    }
    var widthWrapper: DecimalSerialized<Double?> {
        return _width
    }
    var heightWrapper: DecimalSerialized<Double?> {
        return _height
    }
    var aspectRatioWrapper: DecimalSerialized<Double?> {
        return _aspectRatio
    }
    var audioChannelsWrapper: DecimalSerialized<Double?> {
        return _audioChannels
    }
    var videoResolutionWrapper: DecimalSerialized<Double?> {
        return _videoResolution
    }
}
