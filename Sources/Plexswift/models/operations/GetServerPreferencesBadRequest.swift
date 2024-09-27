// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetServerPreferencesBadRequest {
        public let errors: [Operations.GetServerPreferencesErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetServerPreferencesErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetServerPreferencesBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
