// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct GetButlerTasksButlerResponseBody {
        public let errors: [Operations.GetButlerTasksErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.GetButlerTasksErrors]? = nil) {
            self.errors = errors
        }
    }
}

extension Operations.GetButlerTasksButlerResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
