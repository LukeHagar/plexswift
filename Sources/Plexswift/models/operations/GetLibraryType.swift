// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryType {
        public let active: Bool?
        public let field: [Operations.Field]?
        public let filter: [Operations.Filter]?
        public let key: String?
        public let sort: [Operations.Sort]?
        public let title: String?
        public let type: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(active: Bool? = nil, field: [Operations.Field]? = nil, filter: [Operations.Filter]? = nil, key: String? = nil, sort: [Operations.Sort]? = nil, title: String? = nil, type: String? = nil) {
            self.active = active
            self.field = field
            self.filter = filter
            self.key = key
            self.sort = sort
            self.title = title
            self.type = type
        }
    }
}

extension Operations.GetLibraryType: Codable {
    enum CodingKeys: String, CodingKey {
        case active
        case field = "Field"
        case filter = "Filter"
        case key
        case sort = "Sort"
        case title
        case type
    }
}

