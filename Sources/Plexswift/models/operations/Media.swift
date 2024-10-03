// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Media {
        public let container: String
        public let id: Int
        public let part: [Operations.Part]
        @DecimalSerialized
        public private(set) var aspectRatio: Double?
        public let audioChannels: Int?
        public let audioCodec: String?
        public let audioProfile: String?
        public let bitrate: Int?
        public let duration: Int?
        public let has64bitOffsets: Bool?
        public let hasVoiceActivity: Bool?
        public let height: Int?
        public let optimizedForStreaming: Operations.OptimizedForStreaming?
        public let videoCodec: String?
        public let videoFrameRate: String?
        public let videoProfile: String?
        public let videoResolution: String?
        public let width: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(container: String, id: Int, part: [Operations.Part], aspectRatio: Double? = nil, audioChannels: Int? = nil, audioCodec: String? = nil, audioProfile: String? = nil, bitrate: Int? = nil, duration: Int? = nil, has64bitOffsets: Bool? = nil, hasVoiceActivity: Bool? = nil, height: Int? = nil, optimizedForStreaming: Operations.OptimizedForStreaming? = nil, videoCodec: String? = nil, videoFrameRate: String? = nil, videoProfile: String? = nil, videoResolution: String? = nil, width: Int? = nil) {
            self.container = container
            self.id = id
            self.part = part
            self._aspectRatio = DecimalSerialized<Double?>(wrappedValue: aspectRatio)
            self.audioChannels = audioChannels
            self.audioCodec = audioCodec
            self.audioProfile = audioProfile
            self.bitrate = bitrate
            self.duration = duration
            self.has64bitOffsets = has64bitOffsets
            self.hasVoiceActivity = hasVoiceActivity
            self.height = height
            self.optimizedForStreaming = optimizedForStreaming
            self.videoCodec = videoCodec
            self.videoFrameRate = videoFrameRate
            self.videoProfile = videoProfile
            self.videoResolution = videoResolution
            self.width = width
        }
    }}

extension Operations.Media: Codable {
    enum CodingKeys: String, CodingKey {
        case container
        case id
        case part = "Part"
        case aspectRatio
        case audioChannels
        case audioCodec
        case audioProfile
        case bitrate
        case duration
        case has64bitOffsets
        case hasVoiceActivity
        case height
        case optimizedForStreaming
        case videoCodec
        case videoFrameRate
        case videoProfile
        case videoResolution
        case width
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.container = try container.decode(String.self, forKey: .container)
        self.id = try container.decode(Int.self, forKey: .id)
        self.part = try container.decode([Operations.Part].self, forKey: .part)
        self._aspectRatio = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .aspectRatio) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.audioChannels = try container.decodeIfPresent(Int.self, forKey: .audioChannels)
        self.audioCodec = try container.decodeIfPresent(String.self, forKey: .audioCodec)
        self.audioProfile = try container.decodeIfPresent(String.self, forKey: .audioProfile)
        self.bitrate = try container.decodeIfPresent(Int.self, forKey: .bitrate)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.has64bitOffsets = try container.decodeIfPresent(Bool.self, forKey: .has64bitOffsets)
        self.hasVoiceActivity = try container.decodeIfPresent(Bool.self, forKey: .hasVoiceActivity)
        self.height = try container.decodeIfPresent(Int.self, forKey: .height)
        self.optimizedForStreaming = try container.decodeIfPresent(Operations.OptimizedForStreaming.self, forKey: .optimizedForStreaming)
        self.videoCodec = try container.decodeIfPresent(String.self, forKey: .videoCodec)
        self.videoFrameRate = try container.decodeIfPresent(String.self, forKey: .videoFrameRate)
        self.videoProfile = try container.decodeIfPresent(String.self, forKey: .videoProfile)
        self.videoResolution = try container.decodeIfPresent(String.self, forKey: .videoResolution)
        self.width = try container.decodeIfPresent(Int.self, forKey: .width)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.container, forKey: .container)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.part, forKey: .part)
        if self.aspectRatio != nil {
            try container.encode(self._aspectRatio, forKey: .aspectRatio)
        }
        try container.encodeIfPresent(self.audioChannels, forKey: .audioChannels)
        try container.encodeIfPresent(self.audioCodec, forKey: .audioCodec)
        try container.encodeIfPresent(self.audioProfile, forKey: .audioProfile)
        try container.encodeIfPresent(self.bitrate, forKey: .bitrate)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.has64bitOffsets, forKey: .has64bitOffsets)
        try container.encodeIfPresent(self.hasVoiceActivity, forKey: .hasVoiceActivity)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.optimizedForStreaming, forKey: .optimizedForStreaming)
        try container.encodeIfPresent(self.videoCodec, forKey: .videoCodec)
        try container.encodeIfPresent(self.videoFrameRate, forKey: .videoFrameRate)
        try container.encodeIfPresent(self.videoProfile, forKey: .videoProfile)
        try container.encodeIfPresent(self.videoResolution, forKey: .videoResolution)
        try container.encodeIfPresent(self.width, forKey: .width)
    }
}

extension Operations.Media {
    var aspectRatioWrapper: DecimalSerialized<Double?> {
        return _aspectRatio
    }
}
