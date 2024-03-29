// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetadataRequest: APIValue {
        /// the id of the library item to return the children of.
        @DecimalSerialized
        public private(set) var ratingKey: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter ratingKey: the id of the library item to return the children of.
        ///
        public init(ratingKey: Double) {
            self._ratingKey = DecimalSerialized<Double>(wrappedValue: ratingKey)
        }
    }
}
extension Operations.GetMetadataRequest {
    var ratingKeyWrapper: DecimalSerialized<Double> {
        return _ratingKey
    }
}
