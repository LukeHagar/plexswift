// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetWatchListBadRequest {
        public let errors: [Operations.GetWatchListErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetWatchListErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetWatchListBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

