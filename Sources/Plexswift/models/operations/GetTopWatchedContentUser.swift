// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTopWatchedContentUser {
        public let id: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(id: Int? = nil) {
            self.id = id
        }
    }}

extension Operations.GetTopWatchedContentUser: Codable {
    enum CodingKeys: String, CodingKey {
        case id
    }
}

