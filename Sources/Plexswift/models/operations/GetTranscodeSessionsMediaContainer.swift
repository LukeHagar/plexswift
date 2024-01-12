// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTranscodeSessionsMediaContainer {
        @DecimalSerialized
        public private(set) var size: Double?
        public let transcodeSession: [Operations.TranscodeSession]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(size: Double? = nil, transcodeSession: [Operations.TranscodeSession]? = nil) {
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self.transcodeSession = transcodeSession
        }
    }
}

extension Operations.GetTranscodeSessionsMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case size
        case transcodeSession = "TranscodeSession"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.transcodeSession = try container.decodeIfPresent([Operations.TranscodeSession].self, forKey: .transcodeSession)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        try container.encodeIfPresent(self.transcodeSession, forKey: .transcodeSession)
    }
}

extension Operations.GetTranscodeSessionsMediaContainer {
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
}
