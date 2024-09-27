// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryItemsLibraryFieldType {
        public let `operator`: [Operations.GetLibraryItemsLibraryOperator]
        public let type: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(`operator`: [Operations.GetLibraryItemsLibraryOperator], type: String) {
            self.`operator` = `operator`
            self.type = type
        }
    }}

extension Operations.GetLibraryItemsLibraryFieldType: Codable {
    enum CodingKeys: String, CodingKey {
        case `operator` = "Operator"
        case type
    }
}
