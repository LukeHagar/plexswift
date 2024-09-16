// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct CreatePlaylistRequest: APIValue {
        /// whether the playlist is smart or not
        public let smart: Operations.Smart
        /// name of the playlist
        public let title: String
        /// type of playlist to create
        public let type: Operations.CreatePlaylistQueryParamType
        /// the content URI for the playlist
        public let uri: String
        /// the play queue to copy to a playlist
        @DecimalSerialized
        public private(set) var playQueueID: Double?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter smart: whether the playlist is smart or not
        /// - Parameter title: name of the playlist
        /// - Parameter type: type of playlist to create
        /// - Parameter uri: the content URI for the playlist
        /// - Parameter playQueueID: the play queue to copy to a playlist
        ///
        public init(smart: Operations.Smart, title: String, type: Operations.CreatePlaylistQueryParamType, uri: String, playQueueID: Double? = nil) {
            self.smart = smart
            self.title = title
            self.type = type
            self.uri = uri
            self._playQueueID = DecimalSerialized<Double?>(wrappedValue: playQueueID)
        }
    }}
extension Operations.CreatePlaylistRequest {
    var playQueueIDWrapper: DecimalSerialized<Double?> {
        return _playQueueID
    }
}
