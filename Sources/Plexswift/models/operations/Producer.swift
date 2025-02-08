// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Producer {
        /// The filter string for the role.
        public let filter: String
        /// The unique role identifier.
        public let id: Int
        /// The actor's name.
        public let tag: String
        /// A key associated with the actor tag.
        public let tagKey: String
        /// The character name or role.
        public let role: String?
        /// URL for the role thumbnail image.
        public let thumb: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter filter: The filter string for the role.
        /// - Parameter id: The unique role identifier.
        /// - Parameter tag: The actor's name.
        /// - Parameter tagKey: A key associated with the actor tag.
        /// - Parameter role: The character name or role.
        /// - Parameter thumb: URL for the role thumbnail image.
        ///
        public init(filter: String, id: Int, tag: String, tagKey: String, role: String? = nil, thumb: String? = nil) {
            self.filter = filter
            self.id = id
            self.tag = tag
            self.tagKey = tagKey
            self.role = role
            self.thumb = thumb
        }
    }}

extension Operations.Producer: Codable {
    enum CodingKeys: String, CodingKey {
        case filter
        case id
        case tag
        case tagKey
        case role
        case thumb
    }
}

