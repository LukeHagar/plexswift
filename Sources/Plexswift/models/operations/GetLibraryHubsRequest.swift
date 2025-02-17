// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryHubsRequest: APIValue {
        /// the Id of the library to query
        @DecimalSerialized
        public private(set) var sectionId: Double
        /// The number of items to return with each hub.
        @DecimalSerialized
        public private(set) var count: Double?
        /// Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
        public let onlyTransient: Operations.QueryParamOnlyTransient?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter sectionId: the Id of the library to query
        /// - Parameter count: The number of items to return with each hub.
        /// - Parameter onlyTransient: Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
        ///
        public init(sectionId: Double, count: Double? = nil, onlyTransient: Operations.QueryParamOnlyTransient? = nil) {
            self._sectionId = DecimalSerialized<Double>(wrappedValue: sectionId)
            self._count = DecimalSerialized<Double?>(wrappedValue: count)
            self.onlyTransient = onlyTransient
        }
    }}
extension Operations.GetLibraryHubsRequest {
    var sectionIdWrapper: DecimalSerialized<Double> {
        return _sectionId
    }
    var countWrapper: DecimalSerialized<Double?> {
        return _count
    }
}
