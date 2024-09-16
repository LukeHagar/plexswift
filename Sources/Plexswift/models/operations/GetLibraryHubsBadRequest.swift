// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetLibraryHubsBadRequest {
        public let errors: [Operations.GetLibraryHubsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetLibraryHubsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetLibraryHubsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

