// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Collection {
        public let tag: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(tag: String? = nil) {
            self.tag = tag
        }
    }}

extension Operations.Collection: Codable {
    enum CodingKeys: String, CodingKey {
        case tag
    }
}

