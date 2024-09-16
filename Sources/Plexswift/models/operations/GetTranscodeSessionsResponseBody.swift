// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The Transcode Sessions
    public struct GetTranscodeSessionsResponseBody {
        public let mediaContainer: Operations.GetTranscodeSessionsMediaContainer?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(mediaContainer: Operations.GetTranscodeSessionsMediaContainer? = nil) {
            self.mediaContainer = mediaContainer
        }
    }}

extension Operations.GetTranscodeSessionsResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case mediaContainer = "MediaContainer"
    }
}

