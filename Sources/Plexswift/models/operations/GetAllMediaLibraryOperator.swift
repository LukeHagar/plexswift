// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllMediaLibraryOperator {
        public let key: String
        public let title: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(key: String, title: String) {
            self.key = key
            self.title = title
        }
    }}

extension Operations.GetAllMediaLibraryOperator: Codable {
    enum CodingKeys: String, CodingKey {
        case key
        case title
    }
}

