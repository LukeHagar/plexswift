// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct StartAllTasksBadRequest {
        public let errors: [Operations.StartAllTasksErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.StartAllTasksErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.StartAllTasksBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
