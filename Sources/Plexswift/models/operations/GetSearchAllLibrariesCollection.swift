// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchAllLibrariesCollection {
        public let tag: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(tag: String? = nil) {
            self.tag = tag
        }
    }}

extension Operations.GetSearchAllLibrariesCollection: Codable {
    enum CodingKeys: String, CodingKey {
        case tag
    }
}

