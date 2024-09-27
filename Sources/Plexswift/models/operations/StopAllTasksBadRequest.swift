// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct StopAllTasksBadRequest {
        public let errors: [Operations.StopAllTasksErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.StopAllTasksErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.StopAllTasksBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
