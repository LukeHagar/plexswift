// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchResultsRole {
        public let tag: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(tag: String? = nil) {
            self.tag = tag
        }
    }
}

extension Operations.GetSearchResultsRole: Codable {
    enum CodingKeys: String, CodingKey {
        case tag
    }
}

