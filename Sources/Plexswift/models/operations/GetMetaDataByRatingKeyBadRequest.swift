// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetMetaDataByRatingKeyBadRequest {
        public let errors: [Operations.GetMetaDataByRatingKeyErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetMetaDataByRatingKeyErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetMetaDataByRatingKeyBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
