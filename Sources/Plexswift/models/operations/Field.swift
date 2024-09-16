// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Field {
        public let key: String?
        public let subType: String?
        public let title: String?
        public let type: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(key: String? = nil, subType: String? = nil, title: String? = nil, type: String? = nil) {
            self.key = key
            self.subType = subType
            self.title = title
            self.type = type
        }
    }}

extension Operations.Field: Codable {
    enum CodingKeys: String, CodingKey {
        case key
        case subType
        case title
        case type
    }
}

