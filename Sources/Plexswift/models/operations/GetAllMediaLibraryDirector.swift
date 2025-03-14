// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllMediaLibraryDirector {
        /// The role of Director
        public let tag: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter tag: The role of Director
        ///
        public init(tag: String) {
            self.tag = tag
        }
    }}

extension Operations.GetAllMediaLibraryDirector: Codable {
    enum CodingKeys: String, CodingKey {
        case tag
    }
}

