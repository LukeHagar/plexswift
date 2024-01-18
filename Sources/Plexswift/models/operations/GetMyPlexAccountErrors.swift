// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMyPlexAccountErrors {
        @DecimalSerialized
        public private(set) var code: Double?
        public let message: String?
        @DecimalSerialized
        public private(set) var status: Double?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(code: Double? = nil, message: String? = nil, status: Double? = nil) {
            self._code = DecimalSerialized<Double?>(wrappedValue: code)
            self.message = message
            self._status = DecimalSerialized<Double?>(wrappedValue: status)
        }
    }
}

extension Operations.GetMyPlexAccountErrors: Codable {
    enum CodingKeys: String, CodingKey {
        case code
        case message
        case status
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._code = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .code) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self._status = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .status) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if self.code != nil {
            try container.encode(self._code, forKey: .code)
        }
        try container.encodeIfPresent(self.message, forKey: .message)
        if self.status != nil {
            try container.encode(self._status, forKey: .status)
        }
    }
}

extension Operations.GetMyPlexAccountErrors {
    var codeWrapper: DecimalSerialized<Double?> {
        return _code
    }
    var statusWrapper: DecimalSerialized<Double?> {
        return _status
    }
}
