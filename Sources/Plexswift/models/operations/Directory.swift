// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Directory {
        @DecimalSerialized
        public private(set) var count: Double?
        public let key: String?
        public let title: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(count: Double? = nil, key: String? = nil, title: String? = nil) {
            self._count = DecimalSerialized<Double?>(wrappedValue: count)
            self.key = key
            self.title = title
        }
    }
}

extension Operations.Directory: Codable {
    enum CodingKeys: String, CodingKey {
        case count
        case key
        case title
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._count = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .count) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.key = try container.decodeIfPresent(String.self, forKey: .key)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.count != nil {
            try container.encode(self._count, forKey: .count)
        }
        try container.encodeIfPresent(self.key, forKey: .key)
        try container.encodeIfPresent(self.title, forKey: .title)
    }
}

extension Operations.Directory {
    var countWrapper: DecimalSerialized<Double?> {
        return _count
    }
}
