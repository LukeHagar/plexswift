// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Requests a new pin id used in the authentication flow
    public struct GetPinAuthPinContainer {
        /// The X-Client-Identifier used in the request
        public let clientIdentifier: String
        public let code: String
        @DateTime
        public private(set) var createdAt: Date
        @DateTime
        public private(set) var expiresAt: Date
        /// The number of seconds this pin expires, by default 900 seconds
        public let expiresIn: Int
        public let id: Int
        /// Geo location data
        public let location: Operations.GeoData
        public let product: String
        public let qr: String
        public let trusted: Bool
        public let authToken: AnyValue?
        public let newRegistration: AnyValue?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter clientIdentifier: The X-Client-Identifier used in the request
        /// - Parameter expiresIn: The number of seconds this pin expires, by default 900 seconds
        /// - Parameter location: Geo location data
        ///
        public init(clientIdentifier: String, code: String, createdAt: Date, expiresAt: Date, expiresIn: Int, id: Int, location: Operations.GeoData, product: String, qr: String, trusted: Bool, authToken: AnyValue? = nil, newRegistration: AnyValue? = nil) {
            self.clientIdentifier = clientIdentifier
            self.code = code
            self._createdAt = DateTime<Date>(wrappedValue: createdAt)
            self._expiresAt = DateTime<Date>(wrappedValue: expiresAt)
            self.expiresIn = expiresIn
            self.id = id
            self.location = location
            self.product = product
            self.qr = qr
            self.trusted = trusted
            self.authToken = authToken
            self.newRegistration = newRegistration
        }
    }}

extension Operations.GetPinAuthPinContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case clientIdentifier
        case code
        case createdAt
        case expiresAt
        case expiresIn
        case id
        case location
        case product
        case qr
        case trusted
        case authToken
        case newRegistration
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clientIdentifier = try container.decode(String.self, forKey: .clientIdentifier)
        self.code = try container.decode(String.self, forKey: .code)
        self._createdAt = try container.decode(DateTime<Date>.self, forKey: .createdAt)
        self._expiresAt = try container.decode(DateTime<Date>.self, forKey: .expiresAt)
        self.expiresIn = try container.decode(Int.self, forKey: .expiresIn)
        self.id = try container.decode(Int.self, forKey: .id)
        self.location = try container.decode(Operations.GeoData.self, forKey: .location)
        self.product = try container.decode(String.self, forKey: .product)
        self.qr = try container.decode(String.self, forKey: .qr)
        self.trusted = try container.decode(Bool.self, forKey: .trusted)
        self.authToken = try container.decodeIfPresent(AnyValue.self, forKey: .authToken)
        self.newRegistration = try container.decodeIfPresent(AnyValue.self, forKey: .newRegistration)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.clientIdentifier, forKey: .clientIdentifier)
        try container.encode(self.code, forKey: .code)
        try container.encode(self._createdAt, forKey: .createdAt)
        try container.encode(self._expiresAt, forKey: .expiresAt)
        try container.encode(self.expiresIn, forKey: .expiresIn)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.product, forKey: .product)
        try container.encode(self.qr, forKey: .qr)
        try container.encode(self.trusted, forKey: .trusted)
        try container.encodeIfPresent(self.authToken, forKey: .authToken)
        try container.encodeIfPresent(self.newRegistration, forKey: .newRegistration)
    }
}

extension Operations.GetPinAuthPinContainer {
    var createdAtWrapper: DateTime<Date> {
        return _createdAt
    }
    var expiresAtWrapper: DateTime<Date> {
        return _expiresAt
    }
}
