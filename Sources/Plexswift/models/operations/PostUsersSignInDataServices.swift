// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PostUsersSignInDataServices {
        public let endpoint: String
        public let identifier: String
        public let secret: String
        public let status: Operations.PostUsersSignInDataStatus
        public let token: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(endpoint: String, identifier: String, secret: String, status: Operations.PostUsersSignInDataStatus, token: String) {
            self.endpoint = endpoint
            self.identifier = identifier
            self.secret = secret
            self.status = status
            self.token = token
        }
    }}

extension Operations.PostUsersSignInDataServices: Codable {
    enum CodingKeys: String, CodingKey {
        case endpoint
        case identifier
        case secret
        case status
        case token
    }
}

