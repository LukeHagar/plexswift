// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetCountriesLibraryDirectory {
        public let fastKey: String
        public let key: String
        public let title: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(fastKey: String, key: String, title: String) {
            self.fastKey = fastKey
            self.key = key
            self.title = title
        }
    }}

extension Operations.GetCountriesLibraryDirectory: Codable {
    enum CodingKeys: String, CodingKey {
        case fastKey
        case key
        case title
    }
}

