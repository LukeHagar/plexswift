// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    /// 
    public struct Meta {
        public let fieldType: [Operations.GetLibraryItemsFieldType]?
        public let type: [Operations.GetLibraryItemsLibraryType]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(fieldType: [Operations.GetLibraryItemsFieldType]? = nil, type: [Operations.GetLibraryItemsLibraryType]? = nil) {
            self.fieldType = fieldType
            self.type = type
        }
    }}

extension Operations.Meta: Codable {
    enum CodingKeys: String, CodingKey {
        case fieldType = "FieldType"
        case type = "Type"
    }
}

