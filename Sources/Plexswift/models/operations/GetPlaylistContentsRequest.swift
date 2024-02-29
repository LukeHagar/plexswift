// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPlaylistContentsRequest: APIValue {
        /// the ID of the playlist
        @DecimalSerialized
        public private(set) var playlistID: Double
        /// the metadata type of the item to return
        @DecimalSerialized
        public private(set) var type: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playlistID: the ID of the playlist
        /// - Parameter type: the metadata type of the item to return
        ///
        public init(playlistID: Double, type: Double) {
            self._playlistID = DecimalSerialized<Double>(wrappedValue: playlistID)
            self._type = DecimalSerialized<Double>(wrappedValue: type)
        }
    }
}
extension Operations.GetPlaylistContentsRequest {
    var playlistIDWrapper: DecimalSerialized<Double> {
        return _playlistID
    }
    var typeWrapper: DecimalSerialized<Double> {
        return _type
    }
}
