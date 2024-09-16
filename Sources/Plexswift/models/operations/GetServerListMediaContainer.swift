// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetServerListMediaContainer {
        public let server: [Operations.GetServerListServer]?
        @DecimalSerialized
        public private(set) var size: Double?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(server: [Operations.GetServerListServer]? = nil, size: Double? = nil) {
            self.server = server
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
        }
    }}

extension Operations.GetServerListMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case server = "Server"
        case size
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.server = try container.decodeIfPresent([Operations.GetServerListServer].self, forKey: .server)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.server, forKey: .server)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
    }
}

extension Operations.GetServerListMediaContainer {
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
}
