// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Sort {
        public let `default`: String?
        public let defaultDirection: String?
        public let descKey: String?
        public let firstCharacterKey: String?
        public let key: String?
        public let title: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(`default`: String? = nil, defaultDirection: String? = nil, descKey: String? = nil, firstCharacterKey: String? = nil, key: String? = nil, title: String? = nil) {
            self.`default` = `default`
            self.defaultDirection = defaultDirection
            self.descKey = descKey
            self.firstCharacterKey = firstCharacterKey
            self.key = key
            self.title = title
        }
    }
}

extension Operations.Sort: Codable {
    enum CodingKeys: String, CodingKey {
        case `default` = "default"
        case defaultDirection
        case descKey
        case firstCharacterKey
        case key
        case title
    }
}

