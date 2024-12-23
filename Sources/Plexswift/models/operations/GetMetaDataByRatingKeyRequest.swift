// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMetaDataByRatingKeyRequest: APIValue {
        /// the id of the library item to return the children of.
        public let ratingKey: Int

        /// Creates an object with the specified parameters
        ///
        /// - Parameter ratingKey: the id of the library item to return the children of.
        ///
        public init(ratingKey: Int) {
            self.ratingKey = ratingKey
        }
    }}
