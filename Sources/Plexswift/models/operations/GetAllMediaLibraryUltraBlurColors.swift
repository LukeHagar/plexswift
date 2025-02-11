// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllMediaLibraryUltraBlurColors {
        public let bottomLeft: String
        public let bottomRight: String
        public let topLeft: String
        public let topRight: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bottomLeft: String, bottomRight: String, topLeft: String, topRight: String) {
            self.bottomLeft = bottomLeft
            self.bottomRight = bottomRight
            self.topLeft = topLeft
            self.topRight = topRight
        }
    }}

extension Operations.GetAllMediaLibraryUltraBlurColors: Codable {
    enum CodingKeys: String, CodingKey {
        case bottomLeft
        case bottomRight
        case topLeft
        case topRight
    }
}

