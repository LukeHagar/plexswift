// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryDetailsFieldType {
        public let `operator`: [Operations.GetLibraryDetailsOperator]?
        public let type: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(`operator`: [Operations.GetLibraryDetailsOperator]? = nil, type: String? = nil) {
            self.`operator` = `operator`
            self.type = type
        }
    }}

extension Operations.GetLibraryDetailsFieldType: Codable {
    enum CodingKeys: String, CodingKey {
        case `operator` = "Operator"
        case type
    }
}

