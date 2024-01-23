// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryHubsMedia {
        @DecimalSerialized
        public private(set) var aspectRatio: Double?
        public let audioChannels: Int?
        public let audioCodec: String?
        public let audioProfile: String?
        public let bitrate: Int?
        public let container: String?
        public let duration: Int?
        public let has64bitOffsets: Bool?
        public let height: Int?
        public let id: Int?
        public let optimizedForStreaming: Int?
        public let part: [Operations.GetLibraryHubsPart]?
        public let videoCodec: String?
        public let videoFrameRate: String?
        public let videoProfile: String?
        public let videoResolution: String?
        public let width: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(aspectRatio: Double? = nil, audioChannels: Int? = nil, audioCodec: String? = nil, audioProfile: String? = nil, bitrate: Int? = nil, container: String? = nil, duration: Int? = nil, has64bitOffsets: Bool? = nil, height: Int? = nil, id: Int? = nil, optimizedForStreaming: Int? = nil, part: [Operations.GetLibraryHubsPart]? = nil, videoCodec: String? = nil, videoFrameRate: String? = nil, videoProfile: String? = nil, videoResolution: String? = nil, width: Int? = nil) {
            self._aspectRatio = DecimalSerialized<Double?>(wrappedValue: aspectRatio)
            self.audioChannels = audioChannels
            self.audioCodec = audioCodec
            self.audioProfile = audioProfile
            self.bitrate = bitrate
            self.container = container
            self.duration = duration
            self.has64bitOffsets = has64bitOffsets
            self.height = height
            self.id = id
            self.optimizedForStreaming = optimizedForStreaming
            self.part = part
            self.videoCodec = videoCodec
            self.videoFrameRate = videoFrameRate
            self.videoProfile = videoProfile
            self.videoResolution = videoResolution
            self.width = width
        }
    }
}

extension Operations.GetLibraryHubsMedia: Codable {
    enum CodingKeys: String, CodingKey {
        case aspectRatio
        case audioChannels
        case audioCodec
        case audioProfile
        case bitrate
        case container
        case duration
        case has64bitOffsets
        case height
        case id
        case optimizedForStreaming
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
        self.audioChannels = try container.decodeIfPresent(Int.self, forKey: .audioChannels)
        self.audioCodec = try container.decodeIfPresent(String.self, forKey: .audioCodec)
        self.audioProfile = try container.decodeIfPresent(String.self, forKey: .audioProfile)
        self.bitrate = try container.decodeIfPresent(Int.self, forKey: .bitrate)
        self.container = try container.decodeIfPresent(String.self, forKey: .container)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.has64bitOffsets = try container.decodeIfPresent(Bool.self, forKey: .has64bitOffsets)
        self.height = try container.decodeIfPresent(Int.self, forKey: .height)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.optimizedForStreaming = try container.decodeIfPresent(Int.self, forKey: .optimizedForStreaming)
        self.part = try container.decodeIfPresent([Operations.GetLibraryHubsPart].self, forKey: .part)
        self.videoCodec = try container.decodeIfPresent(String.self, forKey: .videoCodec)
        self.videoFrameRate = try container.decodeIfPresent(String.self, forKey: .videoFrameRate)
        self.videoProfile = try container.decodeIfPresent(String.self, forKey: .videoProfile)
        self.videoResolution = try container.decodeIfPresent(String.self, forKey: .videoResolution)
        self.width = try container.decodeIfPresent(Int.self, forKey: .width)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.aspectRatio != nil {
            try container.encode(self._aspectRatio, forKey: .aspectRatio)
        }
        try container.encodeIfPresent(self.audioChannels, forKey: .audioChannels)
        try container.encodeIfPresent(self.audioCodec, forKey: .audioCodec)
        try container.encodeIfPresent(self.audioProfile, forKey: .audioProfile)
        try container.encodeIfPresent(self.bitrate, forKey: .bitrate)
        try container.encodeIfPresent(self.container, forKey: .container)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.has64bitOffsets, forKey: .has64bitOffsets)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.optimizedForStreaming, forKey: .optimizedForStreaming)
        try container.encodeIfPresent(self.part, forKey: .part)
        try container.encodeIfPresent(self.videoCodec, forKey: .videoCodec)
        try container.encodeIfPresent(self.videoFrameRate, forKey: .videoFrameRate)
        try container.encodeIfPresent(self.videoProfile, forKey: .videoProfile)
        try container.encodeIfPresent(self.videoResolution, forKey: .videoResolution)
        try container.encodeIfPresent(self.width, forKey: .width)
    }
}

extension Operations.GetLibraryHubsMedia {
    var aspectRatioWrapper: DecimalSerialized<Double?> {
        return _aspectRatio
    }
}