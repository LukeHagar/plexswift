// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPinRequest: APIValue {
        /// The unique identifier for the client application
        /// This is used to track the client application and its usage
        /// (UUID, serial number, or other number unique per device)
        /// 
        public let xPlexClientIdentifier: String
        /// Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        public let strong: Bool?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter xPlexClientIdentifier: The unique identifier for the client application
        /// This is used to track the client application and its usage
        /// (UUID, serial number, or other number unique per device)
        /// 
        /// - Parameter strong: Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        ///
        public init(xPlexClientIdentifier: String, strong: Bool? = nil) {
            self.xPlexClientIdentifier = xPlexClientIdentifier
            self.strong = strong
        }
    }
}
