// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetMediaMetaDataBadRequest {
        public let errors: [Operations.GetMediaMetaDataErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetMediaMetaDataErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetMediaMetaDataBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

