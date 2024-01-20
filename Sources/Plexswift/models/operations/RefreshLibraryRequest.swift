// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct RefreshLibraryRequest: APIValue {
        /// the Id of the library to refresh
        @DecimalSerialized
        public private(set) var sectionId: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter sectionId: the Id of the library to refresh
        ///
        public init(sectionId: Double) {
            self._sectionId = DecimalSerialized<Double>(wrappedValue: sectionId)
        }
    }
}
extension Operations.RefreshLibraryRequest {
    var sectionIdWrapper: DecimalSerialized<Double> {
        return _sectionId
    }
}
