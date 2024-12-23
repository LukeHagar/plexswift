// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct SearchResult {
        public let metadata: Operations.GetSearchAllLibrariesMetadata
        @DecimalSerialized
        public private(set) var score: Double

        /// Creates an object with the specified parameters
        ///
        ///
        public init(metadata: Operations.GetSearchAllLibrariesMetadata, score: Double) {
            self.metadata = metadata
            self._score = DecimalSerialized<Double>(wrappedValue: score)
        }
    }}

extension Operations.SearchResult: Codable {
    enum CodingKeys: String, CodingKey {
        case metadata = "Metadata"
        case score
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.metadata = try container.decode(Operations.GetSearchAllLibrariesMetadata.self, forKey: .metadata)
        self._score = try container.decode(DecimalSerialized<Double>.self, forKey: .score)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.metadata, forKey: .metadata)
        try container.encode(self._score, forKey: .score)
    }
}

extension Operations.SearchResult {
    var scoreWrapper: DecimalSerialized<Double> {
        return _score
    }
}
