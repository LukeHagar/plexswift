// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTokenDetailsAuthenticationErrors {
        public let code: Int?
        public let message: String?
        public let status: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(code: Int? = nil, message: String? = nil, status: Int? = nil) {
            self.code = code
            self.message = message
            self.status = status
        }
    }}

extension Operations.GetTokenDetailsAuthenticationErrors: Codable {
    enum CodingKeys: String, CodingKey {
        case code
        case message
        case status
    }
}

