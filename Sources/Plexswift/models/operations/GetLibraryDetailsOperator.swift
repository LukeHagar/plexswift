// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryDetailsOperator {
        public let key: String?
        public let title: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(key: String? = nil, title: String? = nil) {
            self.key = key
            self.title = title
        }
    }}

extension Operations.GetLibraryDetailsOperator: Codable {
    enum CodingKeys: String, CodingKey {
        case key
        case title
    }
}
