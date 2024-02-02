// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Provider {
        public let key: String?
        public let title: String?
        public let type: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(key: String? = nil, title: String? = nil, type: String? = nil) {
            self.key = key
            self.title = title
            self.type = type
        }
    }
}

extension Operations.Provider: Codable {
    enum CodingKeys: String, CodingKey {
        case key
        case title
        case type
    }
}

