// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRecentlyAddedFieldType {
        public let `operator`: [Operations.GetRecentlyAddedOperator]
        public let type: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(`operator`: [Operations.GetRecentlyAddedOperator], type: String) {
            self.`operator` = `operator`
            self.type = type
        }
    }}

extension Operations.GetRecentlyAddedFieldType: Codable {
    enum CodingKeys: String, CodingKey {
        case `operator` = "Operator"
        case type
    }
}

