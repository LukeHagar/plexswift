// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Server {
        public let address: String?
        public let deviceClass: String?
        public let host: String?
        public let machineIdentifier: String?
        public let name: String?
        @DecimalSerialized
        public private(set) var port: Double?
        public let product: String?
        public let `protocol`: String?
        public let protocolCapabilities: String?
        @DecimalSerialized
        public private(set) var protocolVersion: Double?
        public let version: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(address: String? = nil, deviceClass: String? = nil, host: String? = nil, machineIdentifier: String? = nil, name: String? = nil, port: Double? = nil, product: String? = nil, `protocol`: String? = nil, protocolCapabilities: String? = nil, protocolVersion: Double? = nil, version: String? = nil) {
            self.address = address
            self.deviceClass = deviceClass
            self.host = host
            self.machineIdentifier = machineIdentifier
            self.name = name
            self._port = DecimalSerialized<Double?>(wrappedValue: port)
            self.product = product
            self.`protocol` = `protocol`
            self.protocolCapabilities = protocolCapabilities
            self._protocolVersion = DecimalSerialized<Double?>(wrappedValue: protocolVersion)
            self.version = version
        }
    }
}

extension Operations.Server: Codable {
    enum CodingKeys: String, CodingKey {
        case address
        case deviceClass
        case host
        case machineIdentifier
        case name
        case port
        case product
        case `protocol` = "protocol"
        case protocolCapabilities
        case protocolVersion
        case version
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        self.deviceClass = try container.decodeIfPresent(String.self, forKey: .deviceClass)
        self.host = try container.decodeIfPresent(String.self, forKey: .host)
        self.machineIdentifier = try container.decodeIfPresent(String.self, forKey: .machineIdentifier)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self._port = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .port) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.product = try container.decodeIfPresent(String.self, forKey: .product)
        self.`protocol` = try container.decodeIfPresent(String.self, forKey: .`protocol`)
        self.protocolCapabilities = try container.decodeIfPresent(String.self, forKey: .protocolCapabilities)
        self._protocolVersion = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .protocolVersion) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.version = try container.decodeIfPresent(String.self, forKey: .version)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.deviceClass, forKey: .deviceClass)
        try container.encodeIfPresent(self.host, forKey: .host)
        try container.encodeIfPresent(self.machineIdentifier, forKey: .machineIdentifier)
        try container.encodeIfPresent(self.name, forKey: .name)
        if self.port != nil {
            try container.encode(self._port, forKey: .port)
        }
        try container.encodeIfPresent(self.product, forKey: .product)
        try container.encodeIfPresent(self.`protocol`, forKey: .`protocol`)
        try container.encodeIfPresent(self.protocolCapabilities, forKey: .protocolCapabilities)
        if self.protocolVersion != nil {
            try container.encode(self._protocolVersion, forKey: .protocolVersion)
        }
        try container.encodeIfPresent(self.version, forKey: .version)
    }
}

extension Operations.Server {
    var portWrapper: DecimalSerialized<Double?> {
        return _port
    }
    var protocolVersionWrapper: DecimalSerialized<Double?> {
        return _protocolVersion
    }
}
