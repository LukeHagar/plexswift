// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Media Statistics
    public struct GetStatisticsResponseBody {
        public let mediaContainer: Operations.GetStatisticsMediaContainer?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetStatisticsMediaContainer? = nil) {
            self.mediaContainer = mediaContainer
        }
    }}

extension Operations.GetStatisticsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}

