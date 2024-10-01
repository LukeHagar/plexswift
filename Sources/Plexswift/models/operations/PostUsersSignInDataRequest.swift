// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PostUsersSignInDataRequest: APIValue {
        /// The unique identifier for the client application. This is used to track the client application and its usage. (UUID, serial number, or other number unique per device)
        public let clientID: String?
        public let clientName: String?
        public let clientPlatform: String?
        public let clientVersion: String?
        public let deviceName: String?
        /// Login credentials
        public let requestBody: Operations.PostUsersSignInDataRequestBody?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter clientID: The unique identifier for the client application. This is used to track the client application and its usage. (UUID, serial number, or other number unique per device)
        /// - Parameter requestBody: Login credentials
        ///
        public init(clientID: String? = nil, clientName: String? = nil, clientPlatform: String? = nil, clientVersion: String? = nil, deviceName: String? = nil, requestBody: Operations.PostUsersSignInDataRequestBody? = nil) {
            self.clientID = clientID
            self.clientName = clientName
            self.clientPlatform = clientPlatform
            self.clientVersion = clientVersion
            self.deviceName = deviceName
            self.requestBody = requestBody
        }
    }}
