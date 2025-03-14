// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchAllLibrariesMetaDataRating {
        /// A URI or path to the rating image.
        public let image: String
        /// The type of rating (e.g., audience, critic).
        public let type: String
        /// The value of the rating.
        @DecimalSerialized
        public private(set) var value: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter image: A URI or path to the rating image.
        /// - Parameter type: The type of rating (e.g., audience, critic).
        /// - Parameter value: The value of the rating.
        ///
        public init(image: String, type: String, value: Double) {
            self.image = image
            self.type = type
            self._value = DecimalSerialized<Double>(wrappedValue: value)
        }
    }}

extension Operations.GetSearchAllLibrariesMetaDataRating: Codable {
    enum CodingKeys: String, CodingKey {
        case image
        case type
        case value
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.image = try container.decode(String.self, forKey: .image)
        self.type = try container.decode(String.self, forKey: .type)
        self._value = try container.decode(DecimalSerialized<Double>.self, forKey: .value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.image, forKey: .image)
        try container.encode(self.type, forKey: .type)
        try container.encode(self._value, forKey: .value)
    }
}

extension Operations.GetSearchAllLibrariesMetaDataRating {
    var valueWrapper: DecimalSerialized<Double> {
        return _value
    }
}
