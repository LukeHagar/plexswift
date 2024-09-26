// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Stream {
        /// Codec used by the stream
        public let codec: String
        public let id: Int
        /// The index of the stream
        public let index: Int
        /// Type of stream (1 = video, 2 = audio, 3 = subtitle)
        public let streamType: Int
        /// The audio channel layout
        public let audioChannelLayout: String?
        /// The bit depth of the video stream
        public let bitDepth: Int?
        /// The bitrate of the stream in kbps
        public let bitrate: Int?
        /// Indicates if the subtitle stream can auto-sync
        public let canAutoSync: Bool?
        /// Number of audio channels (for audio streams)
        public let channels: Int?
        /// The chroma location of the video stream
        public let chromaLocation: String?
        /// The chroma subsampling format
        public let chromaSubsampling: String?
        public let closedCaptions: Bool?
        /// The coded height of the video stream
        public let codedHeight: Int?
        /// The coded width of the video stream
        public let codedWidth: Int?
        /// The color primaries of the video stream
        public let colorPrimaries: String?
        /// The color range of the video stream
        public let colorRange: String?
        /// The color space of the video stream
        public let colorSpace: String?
        /// The transfer characteristics (TRC) of the video stream
        public let colorTrc: String?
        /// Indicates if this is the default stream
        public let `default`: Bool?
        /// Display title of the stream
        public let displayTitle: String?
        public let embeddedInVideo: String?
        /// Extended display title of the stream
        public let extendedDisplayTitle: String?
        /// The frame rate of the video stream
        @DecimalSerialized
        public private(set) var frameRate: Double?
        /// Indicates if the stream has a scaling matrix
        public let hasScalingMatrix: Bool?
        public let hearingImpaired: Bool?
        /// The height of the video stream
        public let height: Int?
        /// The language of the stream (for audio/subtitle streams)
        public let language: String?
        /// Language code of the stream
        public let languageCode: String?
        /// Language tag of the stream
        public let languageTag: String?
        /// The level of the video codec
        public let level: Int?
        /// The profile of the video codec
        public let profile: String?
        /// Number of reference frames
        public let refFrames: Int?
        /// Sampling rate of the audio stream in Hz
        public let samplingRate: Int?
        /// The scan type (progressive or interlaced)
        public let scanType: String?
        /// Indicates if the stream is selected
        public let selected: Bool?
        /// The identifier of the video stream
        public let streamIdentifier: String?
        /// Title of the subtitle track (for subtitle streams)
        public let title: String?
        /// The width of the video stream
        public let width: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter codec: Codec used by the stream
        /// - Parameter index: The index of the stream
        /// - Parameter streamType: Type of stream (1 = video, 2 = audio, 3 = subtitle)
        /// - Parameter audioChannelLayout: The audio channel layout
        /// - Parameter bitDepth: The bit depth of the video stream
        /// - Parameter bitrate: The bitrate of the stream in kbps
        /// - Parameter canAutoSync: Indicates if the subtitle stream can auto-sync
        /// - Parameter channels: Number of audio channels (for audio streams)
        /// - Parameter chromaLocation: The chroma location of the video stream
        /// - Parameter chromaSubsampling: The chroma subsampling format
        /// - Parameter codedHeight: The coded height of the video stream
        /// - Parameter codedWidth: The coded width of the video stream
        /// - Parameter colorPrimaries: The color primaries of the video stream
        /// - Parameter colorRange: The color range of the video stream
        /// - Parameter colorSpace: The color space of the video stream
        /// - Parameter colorTrc: The transfer characteristics (TRC) of the video stream
        /// - Parameter `default`: Indicates if this is the default stream
        /// - Parameter displayTitle: Display title of the stream
        /// - Parameter extendedDisplayTitle: Extended display title of the stream
        /// - Parameter frameRate: The frame rate of the video stream
        /// - Parameter hasScalingMatrix: Indicates if the stream has a scaling matrix
        /// - Parameter height: The height of the video stream
        /// - Parameter language: The language of the stream (for audio/subtitle streams)
        /// - Parameter languageCode: Language code of the stream
        /// - Parameter languageTag: Language tag of the stream
        /// - Parameter level: The level of the video codec
        /// - Parameter profile: The profile of the video codec
        /// - Parameter refFrames: Number of reference frames
        /// - Parameter samplingRate: Sampling rate of the audio stream in Hz
        /// - Parameter scanType: The scan type (progressive or interlaced)
        /// - Parameter selected: Indicates if the stream is selected
        /// - Parameter streamIdentifier: The identifier of the video stream
        /// - Parameter title: Title of the subtitle track (for subtitle streams)
        /// - Parameter width: The width of the video stream
        ///
        public init(codec: String, id: Int, index: Int, streamType: Int, audioChannelLayout: String? = nil, bitDepth: Int? = nil, bitrate: Int? = nil, canAutoSync: Bool? = nil, channels: Int? = nil, chromaLocation: String? = nil, chromaSubsampling: String? = nil, closedCaptions: Bool? = nil, codedHeight: Int? = nil, codedWidth: Int? = nil, colorPrimaries: String? = nil, colorRange: String? = nil, colorSpace: String? = nil, colorTrc: String? = nil, `default`: Bool? = nil, displayTitle: String? = nil, embeddedInVideo: String? = nil, extendedDisplayTitle: String? = nil, frameRate: Double? = nil, hasScalingMatrix: Bool? = nil, hearingImpaired: Bool? = nil, height: Int? = nil, language: String? = nil, languageCode: String? = nil, languageTag: String? = nil, level: Int? = nil, profile: String? = nil, refFrames: Int? = nil, samplingRate: Int? = nil, scanType: String? = nil, selected: Bool? = nil, streamIdentifier: String? = nil, title: String? = nil, width: Int? = nil) {
            self.codec = codec
            self.id = id
            self.index = index
            self.streamType = streamType
            self.audioChannelLayout = audioChannelLayout
            self.bitDepth = bitDepth
            self.bitrate = bitrate
            self.canAutoSync = canAutoSync
            self.channels = channels
            self.chromaLocation = chromaLocation
            self.chromaSubsampling = chromaSubsampling
            self.closedCaptions = closedCaptions
            self.codedHeight = codedHeight
            self.codedWidth = codedWidth
            self.colorPrimaries = colorPrimaries
            self.colorRange = colorRange
            self.colorSpace = colorSpace
            self.colorTrc = colorTrc
            self.`default` = `default`
            self.displayTitle = displayTitle
            self.embeddedInVideo = embeddedInVideo
            self.extendedDisplayTitle = extendedDisplayTitle
            self._frameRate = DecimalSerialized<Double?>(wrappedValue: frameRate)
            self.hasScalingMatrix = hasScalingMatrix
            self.hearingImpaired = hearingImpaired
            self.height = height
            self.language = language
            self.languageCode = languageCode
            self.languageTag = languageTag
            self.level = level
            self.profile = profile
            self.refFrames = refFrames
            self.samplingRate = samplingRate
            self.scanType = scanType
            self.selected = selected
            self.streamIdentifier = streamIdentifier
            self.title = title
            self.width = width
        }
    }}

extension Operations.Stream: Codable {
    enum CodingKeys: String, CodingKey {
        case codec
        case id
        case index
        case streamType
        case audioChannelLayout
        case bitDepth
        case bitrate
        case canAutoSync
        case channels
        case chromaLocation
        case chromaSubsampling
        case closedCaptions
        case codedHeight
        case codedWidth
        case colorPrimaries
        case colorRange
        case colorSpace
        case colorTrc
        case `default` = "default"
        case displayTitle
        case embeddedInVideo
        case extendedDisplayTitle
        case frameRate
        case hasScalingMatrix
        case hearingImpaired
        case height
        case language
        case languageCode
        case languageTag
        case level
        case profile
        case refFrames
        case samplingRate
        case scanType
        case selected
        case streamIdentifier
        case title
        case width
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.codec = try container.decode(String.self, forKey: .codec)
        self.id = try container.decode(Int.self, forKey: .id)
        self.index = try container.decode(Int.self, forKey: .index)
        self.streamType = try container.decode(Int.self, forKey: .streamType)
        self.audioChannelLayout = try container.decodeIfPresent(String.self, forKey: .audioChannelLayout)
        self.bitDepth = try container.decodeIfPresent(Int.self, forKey: .bitDepth)
        self.bitrate = try container.decodeIfPresent(Int.self, forKey: .bitrate)
        self.canAutoSync = try container.decodeIfPresent(Bool.self, forKey: .canAutoSync)
        self.channels = try container.decodeIfPresent(Int.self, forKey: .channels)
        self.chromaLocation = try container.decodeIfPresent(String.self, forKey: .chromaLocation)
        self.chromaSubsampling = try container.decodeIfPresent(String.self, forKey: .chromaSubsampling)
        self.closedCaptions = try container.decodeIfPresent(Bool.self, forKey: .closedCaptions)
        self.codedHeight = try container.decodeIfPresent(Int.self, forKey: .codedHeight)
        self.codedWidth = try container.decodeIfPresent(Int.self, forKey: .codedWidth)
        self.colorPrimaries = try container.decodeIfPresent(String.self, forKey: .colorPrimaries)
        self.colorRange = try container.decodeIfPresent(String.self, forKey: .colorRange)
        self.colorSpace = try container.decodeIfPresent(String.self, forKey: .colorSpace)
        self.colorTrc = try container.decodeIfPresent(String.self, forKey: .colorTrc)
        self.`default` = try container.decodeIfPresent(Bool.self, forKey: .`default`)
        self.displayTitle = try container.decodeIfPresent(String.self, forKey: .displayTitle)
        self.embeddedInVideo = try container.decodeIfPresent(String.self, forKey: .embeddedInVideo)
        self.extendedDisplayTitle = try container.decodeIfPresent(String.self, forKey: .extendedDisplayTitle)
        self._frameRate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .frameRate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.hasScalingMatrix = try container.decodeIfPresent(Bool.self, forKey: .hasScalingMatrix)
        self.hearingImpaired = try container.decodeIfPresent(Bool.self, forKey: .hearingImpaired)
        self.height = try container.decodeIfPresent(Int.self, forKey: .height)
        self.language = try container.decodeIfPresent(String.self, forKey: .language)
        self.languageCode = try container.decodeIfPresent(String.self, forKey: .languageCode)
        self.languageTag = try container.decodeIfPresent(String.self, forKey: .languageTag)
        self.level = try container.decodeIfPresent(Int.self, forKey: .level)
        self.profile = try container.decodeIfPresent(String.self, forKey: .profile)
        self.refFrames = try container.decodeIfPresent(Int.self, forKey: .refFrames)
        self.samplingRate = try container.decodeIfPresent(Int.self, forKey: .samplingRate)
        self.scanType = try container.decodeIfPresent(String.self, forKey: .scanType)
        self.selected = try container.decodeIfPresent(Bool.self, forKey: .selected)
        self.streamIdentifier = try container.decodeIfPresent(String.self, forKey: .streamIdentifier)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.width = try container.decodeIfPresent(Int.self, forKey: .width)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.codec, forKey: .codec)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.index, forKey: .index)
        try container.encode(self.streamType, forKey: .streamType)
        try container.encodeIfPresent(self.audioChannelLayout, forKey: .audioChannelLayout)
        try container.encodeIfPresent(self.bitDepth, forKey: .bitDepth)
        try container.encodeIfPresent(self.bitrate, forKey: .bitrate)
        try container.encodeIfPresent(self.canAutoSync, forKey: .canAutoSync)
        try container.encodeIfPresent(self.channels, forKey: .channels)
        try container.encodeIfPresent(self.chromaLocation, forKey: .chromaLocation)
        try container.encodeIfPresent(self.chromaSubsampling, forKey: .chromaSubsampling)
        try container.encodeIfPresent(self.closedCaptions, forKey: .closedCaptions)
        try container.encodeIfPresent(self.codedHeight, forKey: .codedHeight)
        try container.encodeIfPresent(self.codedWidth, forKey: .codedWidth)
        try container.encodeIfPresent(self.colorPrimaries, forKey: .colorPrimaries)
        try container.encodeIfPresent(self.colorRange, forKey: .colorRange)
        try container.encodeIfPresent(self.colorSpace, forKey: .colorSpace)
        try container.encodeIfPresent(self.colorTrc, forKey: .colorTrc)
        try container.encodeIfPresent(self.`default`, forKey: .`default`)
        try container.encodeIfPresent(self.displayTitle, forKey: .displayTitle)
        try container.encodeIfPresent(self.embeddedInVideo, forKey: .embeddedInVideo)
        try container.encodeIfPresent(self.extendedDisplayTitle, forKey: .extendedDisplayTitle)
        if self.frameRate != nil {
            try container.encode(self._frameRate, forKey: .frameRate)
        }
        try container.encodeIfPresent(self.hasScalingMatrix, forKey: .hasScalingMatrix)
        try container.encodeIfPresent(self.hearingImpaired, forKey: .hearingImpaired)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.language, forKey: .language)
        try container.encodeIfPresent(self.languageCode, forKey: .languageCode)
        try container.encodeIfPresent(self.languageTag, forKey: .languageTag)
        try container.encodeIfPresent(self.level, forKey: .level)
        try container.encodeIfPresent(self.profile, forKey: .profile)
        try container.encodeIfPresent(self.refFrames, forKey: .refFrames)
        try container.encodeIfPresent(self.samplingRate, forKey: .samplingRate)
        try container.encodeIfPresent(self.scanType, forKey: .scanType)
        try container.encodeIfPresent(self.selected, forKey: .selected)
        try container.encodeIfPresent(self.streamIdentifier, forKey: .streamIdentifier)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.width, forKey: .width)
    }
}

extension Operations.Stream {
    var frameRateWrapper: DecimalSerialized<Double?> {
        return _frameRate
    }
}
