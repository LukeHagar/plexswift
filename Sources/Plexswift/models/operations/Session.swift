// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Session {
        public let bandwidth: Int?
        public let id: String?
        public let location: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(bandwidth: Int? = nil, id: String? = nil, location: String? = nil) {
            self.bandwidth = bandwidth
            self.id = id
            self.location = location
        }
    }
}

extension Operations.Session: Codable {
    enum CodingKeys: String, CodingKey {
        case bandwidth
        case id
        case location
    }
}

