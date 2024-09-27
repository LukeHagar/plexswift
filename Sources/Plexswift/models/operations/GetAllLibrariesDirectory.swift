// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllLibrariesDirectory {
        public let agent: String
        public let allowSync: Bool
        public let art: String
        public let composite: String
        public let content: Bool
        /// Unix epoch datetime in seconds
        public let contentChangedAt: Int
        /// Unix epoch datetime in seconds
        public let createdAt: Int
        public let directory: Bool
        public let filters: Bool
        public let hidden: Int
        public let key: String
        public let language: String
        public let location: [Operations.Location]
        public let refreshing: Bool
        /// Unix epoch datetime in seconds
        public let scannedAt: Int
        public let scanner: String
        public let thumb: String
        public let title: String
        public let type: String
        /// Unix epoch datetime in seconds
        public let updatedAt: Int
        public let uuid: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter contentChangedAt: Unix epoch datetime in seconds
        /// - Parameter createdAt: Unix epoch datetime in seconds
        /// - Parameter scannedAt: Unix epoch datetime in seconds
        /// - Parameter updatedAt: Unix epoch datetime in seconds
        ///
        public init(agent: String, allowSync: Bool, art: String, composite: String, content: Bool, contentChangedAt: Int, createdAt: Int, directory: Bool, filters: Bool, hidden: Int, key: String, language: String, location: [Operations.Location], refreshing: Bool, scannedAt: Int, scanner: String, thumb: String, title: String, type: String, updatedAt: Int, uuid: String) {
            self.agent = agent
            self.allowSync = allowSync
            self.art = art
            self.composite = composite
            self.content = content
            self.contentChangedAt = contentChangedAt
            self.createdAt = createdAt
            self.directory = directory
            self.filters = filters
            self.hidden = hidden
            self.key = key
            self.language = language
            self.location = location
            self.refreshing = refreshing
            self.scannedAt = scannedAt
            self.scanner = scanner
            self.thumb = thumb
            self.title = title
            self.type = type
            self.updatedAt = updatedAt
            self.uuid = uuid
        }
    }}

extension Operations.GetAllLibrariesDirectory: Codable {
    enum CodingKeys: String, CodingKey {
        case agent
        case allowSync
        case art
        case composite
        case content
        case contentChangedAt
        case createdAt
        case directory
        case filters
        case hidden
        case key
        case language
        case location = "Location"
        case refreshing
        case scannedAt
        case scanner
        case thumb
        case title
        case type
        case updatedAt
        case uuid
    }
}
