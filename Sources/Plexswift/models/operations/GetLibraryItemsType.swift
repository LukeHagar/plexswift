// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryItemsType {
        public let active: Bool
        public let key: String
        public let title: String
        public let type: String
        public let field: [Operations.GetLibraryItemsField]?
        public let filter: [Operations.GetLibraryItemsFilter]?
        public let sort: [Operations.GetLibraryItemsSort]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(active: Bool, key: String, title: String, type: String, field: [Operations.GetLibraryItemsField]? = nil, filter: [Operations.GetLibraryItemsFilter]? = nil, sort: [Operations.GetLibraryItemsSort]? = nil) {
            self.active = active
            self.key = key
            self.title = title
            self.type = type
            self.field = field
            self.filter = filter
            self.sort = sort
        }
    }}

extension Operations.GetLibraryItemsType: Codable {
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
