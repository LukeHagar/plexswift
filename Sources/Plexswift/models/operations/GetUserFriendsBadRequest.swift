// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Bad Request - A parameter was not specified, or was specified incorrectly.
    public struct GetUserFriendsBadRequest {
        public let errors: [Operations.GetUserFriendsErrors]?

        /// Creates a request model with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetUserFriendsErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.GetUserFriendsBadRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

