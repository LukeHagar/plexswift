// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMediaProvidersDirectory {
        public let agent: String?
        public let hubKey: String?
        public let id: String?
        public let key: String?
        public let language: String?
        public let pivot: [Operations.Pivot]?
        public let refreshing: Bool?
        public let scannedAt: Int?
        public let scanner: String?
        public let subtype: String?
        public let title: String?
        public let type: String?
        public let updatedAt: Int?
        public let uuid: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(agent: String? = nil, hubKey: String? = nil, id: String? = nil, key: String? = nil, language: String? = nil, pivot: [Operations.Pivot]? = nil, refreshing: Bool? = nil, scannedAt: Int? = nil, scanner: String? = nil, subtype: String? = nil, title: String? = nil, type: String? = nil, updatedAt: Int? = nil, uuid: String? = nil) {
            self.agent = agent
            self.hubKey = hubKey
            self.id = id
            self.key = key
            self.language = language
            self.pivot = pivot
            self.refreshing = refreshing
            self.scannedAt = scannedAt
            self.scanner = scanner
            self.subtype = subtype
            self.title = title
            self.type = type
            self.updatedAt = updatedAt
            self.uuid = uuid
        }
    }}

extension Operations.GetMediaProvidersDirectory: Codable {
    enum CodingKeys: String, CodingKey {
        case agent
        case hubKey
        case id
        case key
        case language
        case pivot = "Pivot"
        case refreshing
        case scannedAt
        case scanner
        case subtype
        case title
        case type
        case updatedAt
        case uuid
    }
}

