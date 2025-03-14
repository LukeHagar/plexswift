// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTopWatchedContentRole {
        public let filter: String?
        public let id: Int?
        public let role: String?
        public let tag: String?
        public let tagKey: String?
        public let thumb: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(filter: String? = nil, id: Int? = nil, role: String? = nil, tag: String? = nil, tagKey: String? = nil, thumb: String? = nil) {
            self.filter = filter
            self.id = id
            self.role = role
            self.tag = tag
            self.tagKey = tagKey
            self.thumb = thumb
        }
    }}

extension Operations.GetTopWatchedContentRole: Codable {
    enum CodingKeys: String, CodingKey {
        case filter
        case id
        case role
        case tag
        case tagKey
        case thumb
    }
}

