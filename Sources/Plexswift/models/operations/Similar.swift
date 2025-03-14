// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The display tag for the similar item, typically the title.
    public struct Similar {
        public let filter: String
        public let id: Int
        public let tag: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(filter: String, id: Int, tag: String) {
            self.filter = filter
            self.id = id
            self.tag = tag
        }
    }}

extension Operations.Similar: Codable {
    enum CodingKeys: String, CodingKey {
        case filter
        case id
        case tag
    }
}

