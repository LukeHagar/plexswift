// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetResizedPhotoBadRequest {
        public let errors: [Operations.GetResizedPhotoErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetResizedPhotoErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetResizedPhotoBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

