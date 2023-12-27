// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct ResponseBody {
        public let mediaContainer: Operations.GetAvailableClientsMediaContainer?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetAvailableClientsMediaContainer? = nil) {
            self.mediaContainer = mediaContainer
        }
    }
}

extension Operations.ResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}
