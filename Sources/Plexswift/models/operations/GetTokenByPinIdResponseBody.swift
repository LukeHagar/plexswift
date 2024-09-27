// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Not Found or Expired
    public struct GetTokenByPinIdResponseBody {
        public let errors: [Operations.GetTokenByPinIdPlexErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetTokenByPinIdPlexErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetTokenByPinIdResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
