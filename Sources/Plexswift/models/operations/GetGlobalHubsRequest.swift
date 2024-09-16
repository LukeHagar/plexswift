// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetGlobalHubsRequest: APIValue {
        /// The number of items to return with each hub.
        @DecimalSerialized
        public private(set) var count: Double?
        /// Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
        public let onlyTransient: Operations.OnlyTransient?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter count: The number of items to return with each hub.
        /// - Parameter onlyTransient: Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
        ///
        public init(count: Double? = nil, onlyTransient: Operations.OnlyTransient? = nil) {
            self._count = DecimalSerialized<Double?>(wrappedValue: count)
            self.onlyTransient = onlyTransient
        }
    }}
extension Operations.GetGlobalHubsRequest {
    var countWrapper: DecimalSerialized<Double?> {
        return _count
    }
}
