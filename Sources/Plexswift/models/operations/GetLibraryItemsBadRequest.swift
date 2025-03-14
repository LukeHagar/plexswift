// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetLibraryItemsBadRequest {
        public let errors: [Operations.GetLibraryItemsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLibraryItemsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetLibraryItemsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

