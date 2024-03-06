// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetServerCapabilitiesServerResponseBody {
        public let errors: [Operations.Errors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.Errors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetServerCapabilitiesServerResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}

