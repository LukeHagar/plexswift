// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    public struct EnablePaperTrailUnauthorized {
        public let errors: [Operations.EnablePaperTrailLogErrors]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(errors: [Operations.EnablePaperTrailLogErrors]? = nil) {
            self.errors = errors
        }
    }}

extension Operations.EnablePaperTrailUnauthorized: Codable {
    enum CodingKeys: String, CodingKey {
        case errors
    }
}
