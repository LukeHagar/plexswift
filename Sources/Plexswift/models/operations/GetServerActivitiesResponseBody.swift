// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// The Server Activities
    public struct GetServerActivitiesResponseBody {
        public let mediaContainer: Operations.GetServerActivitiesMediaContainer?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetServerActivitiesMediaContainer? = nil) {
            self.mediaContainer = mediaContainer
        }
    }
}

extension Operations.GetServerActivitiesResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}

