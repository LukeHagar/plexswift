// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Release {
        public let added: String?
        public let downloadURL: String?
        public let fixed: String?
        public let key: String?
        public let state: String?
        public let version: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(added: String? = nil, downloadURL: String? = nil, fixed: String? = nil, key: String? = nil, state: String? = nil, version: String? = nil) {
            self.added = added
            self.downloadURL = downloadURL
            self.fixed = fixed
            self.key = key
            self.state = state
            self.version = version
        }
    }}

extension Operations.Release: Codable {
    enum CodingKeys: String, CodingKey {
        case added
        case downloadURL
        case fixed
        case key
        case state
        case version
    }
}

