// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPinRequest: APIValue {
        public let clientName: String?
        public let clientPlatform: String?
        public let clientVersion: String?
        public let deviceName: String?
        /// Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        public let strong: Bool?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter strong: Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        ///
        public init(clientName: String? = nil, clientPlatform: String? = nil, clientVersion: String? = nil, deviceName: String? = nil, strong: Bool? = nil) {
            self.clientName = clientName
            self.clientPlatform = clientPlatform
            self.clientVersion = clientVersion
            self.deviceName = deviceName
            self.strong = strong
        }
    }}
