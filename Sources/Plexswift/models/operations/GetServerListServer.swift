// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetServerListServer {
        public let address: String?
        public let host: String?
        public let machineIdentifier: String?
        public let name: String?
        @DecimalSerialized
        public private(set) var port: Double?
        public let version: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(address: String? = nil, host: String? = nil, machineIdentifier: String? = nil, name: String? = nil, port: Double? = nil, version: String? = nil) {
            self.address = address
            self.host = host
            self.machineIdentifier = machineIdentifier
            self.name = name
            self._port = DecimalSerialized<Double?>(wrappedValue: port)
            self.version = version
        }
    }
}

extension Operations.GetServerListServer: Codable {
    enum CodingKeys: String, CodingKey {
        case address
        case host
        case machineIdentifier
        case name
        case port
        case version
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        self.host = try container.decodeIfPresent(String.self, forKey: .host)
        self.machineIdentifier = try container.decodeIfPresent(String.self, forKey: .machineIdentifier)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self._port = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .port) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.version = try container.decodeIfPresent(String.self, forKey: .version)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.host, forKey: .host)
        try container.encodeIfPresent(self.machineIdentifier, forKey: .machineIdentifier)
        try container.encodeIfPresent(self.name, forKey: .name)
        if self.port != nil {
            try container.encode(self._port, forKey: .port)
        }
        try container.encodeIfPresent(self.version, forKey: .version)
    }
}

extension Operations.GetServerListServer {
    var portWrapper: DecimalSerialized<Double?> {
        return _port
    }
}
