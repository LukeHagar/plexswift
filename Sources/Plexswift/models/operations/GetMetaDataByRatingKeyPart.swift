// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetaDataByRatingKeyPart {
        public let audioProfile: String?
        public let container: String?
        public let duration: Int?
        public let file: String?
        public let has64bitOffsets: Bool?
        public let id: Int?
        public let key: String?
        public let optimizedForStreaming: Bool?
        public let size: Int?
        public let stream: [Operations.GetMetaDataByRatingKeyStream]?
        public let videoProfile: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(audioProfile: String? = nil, container: String? = nil, duration: Int? = nil, file: String? = nil, has64bitOffsets: Bool? = nil, id: Int? = nil, key: String? = nil, optimizedForStreaming: Bool? = nil, size: Int? = nil, stream: [Operations.GetMetaDataByRatingKeyStream]? = nil, videoProfile: String? = nil) {
            self.audioProfile = audioProfile
            self.container = container
            self.duration = duration
            self.file = file
            self.has64bitOffsets = has64bitOffsets
            self.id = id
            self.key = key
            self.optimizedForStreaming = optimizedForStreaming
            self.size = size
            self.stream = stream
            self.videoProfile = videoProfile
        }
    }}

extension Operations.GetMetaDataByRatingKeyPart: Codable {
    enum CodingKeys: String, CodingKey {
        case audioProfile
        case container
        case duration
        case file
        case has64bitOffsets
        case id
        case key
        case optimizedForStreaming
        case size
        case stream = "Stream"
        case videoProfile
    }
}

