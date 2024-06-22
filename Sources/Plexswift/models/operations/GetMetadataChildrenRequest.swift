// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetadataChildrenRequest: APIValue {
        /// the id of the library item to return the children of.
        @DecimalSerialized
        public private(set) var ratingKey: Double
        /// Adds additional elements to the response. Supported types are (Stream)
        /// 
        public let includeElements: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter ratingKey: the id of the library item to return the children of.
        /// - Parameter includeElements: Adds additional elements to the response. Supported types are (Stream)
        /// 
        ///
        public init(ratingKey: Double, includeElements: String? = nil) {
            self._ratingKey = DecimalSerialized<Double>(wrappedValue: ratingKey)
            self.includeElements = includeElements
        }
    }
}
extension Operations.GetMetadataChildrenRequest {
    var ratingKeyWrapper: DecimalSerialized<Double> {
        return _ratingKey
    }
}
