// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Feature {
        public let directory: [Operations.GetMediaProvidersDirectory]?
        public let key: String?
        public let type: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(directory: [Operations.GetMediaProvidersDirectory]? = nil, key: String? = nil, type: String? = nil) {
            self.directory = directory
            self.key = key
            self.type = type
        }
    }}

extension Operations.Feature: Codable {
    enum CodingKeys: String, CodingKey {
        case directory = "Directory"
        case key
        case type
    }
}

