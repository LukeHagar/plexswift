// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMediaProvidersRequest: APIValue {
        /// An authentication token, obtained from plex.tv
        public let xPlexToken: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter xPlexToken: An authentication token, obtained from plex.tv
        ///
        public init(xPlexToken: String) {
            self.xPlexToken = xPlexToken
        }
    }}
