// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetOnDeckStream {
        @DecimalSerialized
        public private(set) var bitDepth: Double?
        @DecimalSerialized
        public private(set) var bitrate: Double?
        public let chromaLocation: String?
        public let chromaSubsampling: String?
        public let codec: String?
        @DecimalSerialized
        public private(set) var codedHeight: Double?
        @DecimalSerialized
        public private(set) var codedWidth: Double?
        public let colorRange: String?
        public let `default`: Bool?
        public let displayTitle: String?
        public let extendedDisplayTitle: String?
        @DecimalSerialized
        public private(set) var frameRate: Double?
        @DecimalSerialized
        public private(set) var height: Double?
        @DecimalSerialized
        public private(set) var id: Double?
        @DecimalSerialized
        public private(set) var index: Double?
        public let language: String?
        public let languageCode: String?
        public let languageTag: String?
        @DecimalSerialized
        public private(set) var level: Double?
        public let profile: String?
        @DecimalSerialized
        public private(set) var refFrames: Double?
        @DecimalSerialized
        public private(set) var streamType: Double?
        @DecimalSerialized
        public private(set) var width: Double?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bitDepth: Double? = nil, bitrate: Double? = nil, chromaLocation: String? = nil, chromaSubsampling: String? = nil, codec: String? = nil, codedHeight: Double? = nil, codedWidth: Double? = nil, colorRange: String? = nil, `default`: Bool? = nil, displayTitle: String? = nil, extendedDisplayTitle: String? = nil, frameRate: Double? = nil, height: Double? = nil, id: Double? = nil, index: Double? = nil, language: String? = nil, languageCode: String? = nil, languageTag: String? = nil, level: Double? = nil, profile: String? = nil, refFrames: Double? = nil, streamType: Double? = nil, width: Double? = nil) {
            self._bitDepth = DecimalSerialized<Double?>(wrappedValue: bitDepth)
            self._bitrate = DecimalSerialized<Double?>(wrappedValue: bitrate)
            self.chromaLocation = chromaLocation
            self.chromaSubsampling = chromaSubsampling
            self.codec = codec
            self._codedHeight = DecimalSerialized<Double?>(wrappedValue: codedHeight)
            self._codedWidth = DecimalSerialized<Double?>(wrappedValue: codedWidth)
            self.colorRange = colorRange
            self.`default` = `default`
            self.displayTitle = displayTitle
            self.extendedDisplayTitle = extendedDisplayTitle
            self._frameRate = DecimalSerialized<Double?>(wrappedValue: frameRate)
            self._height = DecimalSerialized<Double?>(wrappedValue: height)
            self._id = DecimalSerialized<Double?>(wrappedValue: id)
            self._index = DecimalSerialized<Double?>(wrappedValue: index)
            self.language = language
            self.languageCode = languageCode
            self.languageTag = languageTag
            self._level = DecimalSerialized<Double?>(wrappedValue: level)
            self.profile = profile
            self._refFrames = DecimalSerialized<Double?>(wrappedValue: refFrames)
            self._streamType = DecimalSerialized<Double?>(wrappedValue: streamType)
            self._width = DecimalSerialized<Double?>(wrappedValue: width)
        }
    }}

extension Operations.GetOnDeckStream: Codable {
    enum CodingKeys: String, CodingKey {
        case bitDepth
        case bitrate
        case chromaLocation
        case chromaSubsampling
        case codec
        case codedHeight
        case codedWidth
        case colorRange
        case `default` = "default"
        case displayTitle
        case extendedDisplayTitle
        case frameRate
        case height
        case id
        case index
        case language
        case languageCode
        case languageTag
        case level
        case profile
        case refFrames
        case streamType
        case width
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._bitDepth = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .bitDepth) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._bitrate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .bitrate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.chromaLocation = try container.decodeIfPresent(String.self, forKey: .chromaLocation)
        self.chromaSubsampling = try container.decodeIfPresent(String.self, forKey: .chromaSubsampling)
        self.codec = try container.decodeIfPresent(String.self, forKey: .codec)
        self._codedHeight = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .codedHeight) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._codedWidth = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .codedWidth) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.colorRange = try container.decodeIfPresent(String.self, forKey: .colorRange)
        self.`default` = try container.decodeIfPresent(Bool.self, forKey: .`default`)
        self.displayTitle = try container.decodeIfPresent(String.self, forKey: .displayTitle)
        self.extendedDisplayTitle = try container.decodeIfPresent(String.self, forKey: .extendedDisplayTitle)
        self._frameRate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .frameRate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._height = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .height) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._id = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .id) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._index = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .index) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.languageCode = try container.decodeIfPresent(String.self, forKey: .languageCode)
        self.languageTag = try container.decodeIfPresent(String.self, forKey: .languageTag)
        self._level = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .level) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.profile = try container.decodeIfPresent(String.self, forKey: .profile)
        self._refFrames = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .refFrames) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._streamType = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .streamType) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._width = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .width) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.bitDepth != nil {
            try container.encode(self._bitDepth, forKey: .bitDepth)
        }
        if self.bitrate != nil {
            try container.encode(self._bitrate, forKey: .bitrate)
        }
        try container.encodeIfPresent(self.chromaLocation, forKey: .chromaLocation)
        try container.encodeIfPresent(self.chromaSubsampling, forKey: .chromaSubsampling)
        try container.encodeIfPresent(self.codec, forKey: .codec)
        if self.codedHeight != nil {
            try container.encode(self._codedHeight, forKey: .codedHeight)
        }
        if self.codedWidth != nil {
            try container.encode(self._codedWidth, forKey: .codedWidth)
        }
        try container.encodeIfPresent(self.colorRange, forKey: .colorRange)
        try container.encodeIfPresent(self.`default`, forKey: .`default`)
        try container.encodeIfPresent(self.displayTitle, forKey: .displayTitle)
        try container.encodeIfPresent(self.extendedDisplayTitle, forKey: .extendedDisplayTitle)
        if self.frameRate != nil {
            try container.encode(self._frameRate, forKey: .frameRate)
        }
        if self.height != nil {
            try container.encode(self._height, forKey: .height)
        }
        if self.id != nil {
            try container.encode(self._id, forKey: .id)
        }
        if self.index != nil {
            try container.encode(self._index, forKey: .index)
        }
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.languageCode, forKey: .languageCode)
        try container.encodeIfPresent(self.languageTag, forKey: .languageTag)
        if self.level != nil {
            try container.encode(self._level, forKey: .level)
        }
        try container.encodeIfPresent(self.profile, forKey: .profile)
        if self.refFrames != nil {
            try container.encode(self._refFrames, forKey: .refFrames)
        }
        if self.streamType != nil {
            try container.encode(self._streamType, forKey: .streamType)
        }
        if self.width != nil {
            try container.encode(self._width, forKey: .width)
        }
    }
}

extension Operations.GetOnDeckStream {
    var idWrapper: DecimalSerialized<Double?> {
        return _id
    }
    var streamTypeWrapper: DecimalSerialized<Double?> {
        return _streamType
    }
    var indexWrapper: DecimalSerialized<Double?> {
        return _index
    }
    var bitrateWrapper: DecimalSerialized<Double?> {
        return _bitrate
    }
    var bitDepthWrapper: DecimalSerialized<Double?> {
        return _bitDepth
    }
    var codedHeightWrapper: DecimalSerialized<Double?> {
        return _codedHeight
    }
    var codedWidthWrapper: DecimalSerialized<Double?> {
        return _codedWidth
    }
    var frameRateWrapper: DecimalSerialized<Double?> {
        return _frameRate
    }
    var heightWrapper: DecimalSerialized<Double?> {
        return _height
    }
    var levelWrapper: DecimalSerialized<Double?> {
        return _level
    }
    var refFramesWrapper: DecimalSerialized<Double?> {
        return _refFrames
    }
    var widthWrapper: DecimalSerialized<Double?> {
        return _width
    }
}
