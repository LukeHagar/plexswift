// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryItemsImage {
        public let alt: String
        public let type: Operations.GetLibraryItemsLibraryResponse200Type
        public let url: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(alt: String, type: Operations.GetLibraryItemsLibraryResponse200Type, url: String) {
            self.alt = alt
            self.type = type
            self.url = url
        }
    }}

extension Operations.GetLibraryItemsImage: Codable {
    enum CodingKeys: String, CodingKey {
        case alt
        case type
        case url
    }
}
