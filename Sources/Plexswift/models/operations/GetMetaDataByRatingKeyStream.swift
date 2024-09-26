// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetaDataByRatingKeyStream {
        public let bitDepth: Int?
        public let bitrate: Int?
        public let channels: Int?
        public let chromaLocation: String?
        public let chromaSubsampling: String?
        public let codec: String?
        public let codedHeight: Int?
        public let codedWidth: Int?
        public let colorPrimaries: String?
        public let colorRange: String?
        public let colorSpace: String?
        public let colorTrc: String?
        public let `default`: Bool?
        public let displayTitle: String?
        public let extendedDisplayTitle: String?
        public let frameRate: Int?
        public let hasScalingMatrix: Bool?
        public let height: Int?
        public let id: Int?
        public let index: Int?
        public let language: String?
        public let languageCode: String?
        public let languageTag: String?
        public let level: Int?
        public let profile: String?
        public let refFrames: Int?
        public let samplingRate: Int?
        public let scanType: String?
        public let selected: Bool?
        public let streamIdentifier: String?
        public let streamType: Int?
        public let width: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bitDepth: Int? = nil, bitrate: Int? = nil, channels: Int? = nil, chromaLocation: String? = nil, chromaSubsampling: String? = nil, codec: String? = nil, codedHeight: Int? = nil, codedWidth: Int? = nil, colorPrimaries: String? = nil, colorRange: String? = nil, colorSpace: String? = nil, colorTrc: String? = nil, `default`: Bool? = nil, displayTitle: String? = nil, extendedDisplayTitle: String? = nil, frameRate: Int? = nil, hasScalingMatrix: Bool? = nil, height: Int? = nil, id: Int? = nil, index: Int? = nil, language: String? = nil, languageCode: String? = nil, languageTag: String? = nil, level: Int? = nil, profile: String? = nil, refFrames: Int? = nil, samplingRate: Int? = nil, scanType: String? = nil, selected: Bool? = nil, streamIdentifier: String? = nil, streamType: Int? = nil, width: Int? = nil) {
            self.bitDepth = bitDepth
            self.bitrate = bitrate
            self.channels = channels
            self.chromaLocation = chromaLocation
            self.chromaSubsampling = chromaSubsampling
            self.codec = codec
            self.codedHeight = codedHeight
            self.codedWidth = codedWidth
            self.colorPrimaries = colorPrimaries
            self.colorRange = colorRange
            self.colorSpace = colorSpace
            self.colorTrc = colorTrc
            self.`default` = `default`
            self.displayTitle = displayTitle
            self.extendedDisplayTitle = extendedDisplayTitle
            self.frameRate = frameRate
            self.hasScalingMatrix = hasScalingMatrix
            self.height = height
            self.id = id
            self.index = index
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
            self.streamType = streamType
            self.width = width
        }
    }}

extension Operations.GetMetaDataByRatingKeyStream: Codable {
    enum CodingKeys: String, CodingKey {
        case bitDepth
        case bitrate
        case channels
        case chromaLocation
        case chromaSubsampling
        case codec
        case codedHeight
        case codedWidth
        case colorPrimaries
        case colorRange
        case colorSpace
        case colorTrc
        case `default` = "default"
        case displayTitle
        case extendedDisplayTitle
        case frameRate
        case hasScalingMatrix
        case height
        case id
        case index
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
        case streamType
        case width
    }
}

