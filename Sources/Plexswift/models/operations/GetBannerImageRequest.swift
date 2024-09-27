// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetBannerImageRequest: APIValue {
        public let height: Int
        public let minSize: Int
        /// the id of the library item to return the children of.
        public let ratingKey: Int
        public let upscale: Int
        public let width: Int
        /// Plex Authentication Token
        public let xPlexToken: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter ratingKey: the id of the library item to return the children of.
        /// - Parameter xPlexToken: Plex Authentication Token
        ///
        public init(height: Int, minSize: Int, ratingKey: Int, upscale: Int, width: Int, xPlexToken: String) {
            self.height = height
            self.minSize = minSize
            self.ratingKey = ratingKey
            self.upscale = upscale
            self.width = width
            self.xPlexToken = xPlexToken
        }
    }}