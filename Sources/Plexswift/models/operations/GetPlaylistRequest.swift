// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPlaylistRequest: APIValue {
        /// the ID of the playlist
        @DecimalSerialized
        public private(set) var playlistID: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playlistID: the ID of the playlist
        ///
        public init(playlistID: Double) {
            self._playlistID = DecimalSerialized<Double>(wrappedValue: playlistID)
        }
    }}
extension Operations.GetPlaylistRequest {
    var playlistIDWrapper: DecimalSerialized<Double> {
        return _playlistID
    }
}
