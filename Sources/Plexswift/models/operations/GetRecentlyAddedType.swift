// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRecentlyAddedType {
        public let active: Bool
        public let key: String
        public let title: String
        public let type: String
        public let field: [Operations.GetRecentlyAddedField]?
        public let filter: [Operations.GetRecentlyAddedFilter]?
        public let sort: [Operations.GetRecentlyAddedSort]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(active: Bool, key: String, title: String, type: String, field: [Operations.GetRecentlyAddedField]? = nil, filter: [Operations.GetRecentlyAddedFilter]? = nil, sort: [Operations.GetRecentlyAddedSort]? = nil) {
            self.active = active
            self.key = key
            self.title = title
            self.type = type
            self.field = field
            self.filter = filter
            self.sort = sort
        }
    }}

extension Operations.GetRecentlyAddedType: Codable {
    enum CodingKeys: String, CodingKey {
        case active
        case key
        case title
        case type
        case field = "Field"
        case filter = "Filter"
        case sort = "Sort"
    }
}
