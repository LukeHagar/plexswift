// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetPinRequest: APIValue {
        /// Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        public let strong: Bool?
        /// The unique identifier for the client application
        /// This is used to track the client application and its usage
        /// (UUID, serial number, or other number unique per device)
        /// 
        public let xPlexClientIdentifier: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter strong: Determines the kind of code returned by the API call
        /// Strong codes are used for Pin authentication flows
        /// Non-Strong codes are used for `Plex.tv/link`
        /// 
        /// - Parameter xPlexClientIdentifier: The unique identifier for the client application
        /// This is used to track the client application and its usage
        /// (UUID, serial number, or other number unique per device)
        /// 
        ///
        public init(strong: Bool? = nil, xPlexClientIdentifier: String? = nil) {
            self.strong = strong
            self.xPlexClientIdentifier = xPlexClientIdentifier
        }
    }
}
