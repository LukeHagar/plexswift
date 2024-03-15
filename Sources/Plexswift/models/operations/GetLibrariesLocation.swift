// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibrariesLocation {
        public let id: Int?
        public let path: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(id: Int? = nil, path: String? = nil) {
            self.id = id
            self.path = path
        }
    }
}

extension Operations.GetLibrariesLocation: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case path
    }
}

