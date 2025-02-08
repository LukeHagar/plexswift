// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMediaMetaDataUltraBlurColors {
        /// The bottom-left color value.
        public let bottomLeft: String
        /// The bottom-right color value.
        public let bottomRight: String
        /// The top-left color value.
        public let topLeft: String
        /// The top-right color value.
        public let topRight: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter bottomLeft: The bottom-left color value.
        /// - Parameter bottomRight: The bottom-right color value.
        /// - Parameter topLeft: The top-left color value.
        /// - Parameter topRight: The top-right color value.
        ///
        public init(bottomLeft: String, bottomRight: String, topLeft: String, topRight: String) {
            self.bottomLeft = bottomLeft
            self.bottomRight = bottomRight
            self.topLeft = topLeft
            self.topRight = topRight
        }
    }}

extension Operations.GetMediaMetaDataUltraBlurColors: Codable {
    enum CodingKeys: String, CodingKey {
        case bottomLeft
        case bottomRight
        case topLeft
        case topRight
    }
}

