// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetMediaMetaDataGuids {
        /// The GUID value.
        public let id: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: The GUID value.
        ///
        public init(id: String) {
            self.id = id
        }
    }}

extension Operations.GetMediaMetaDataGuids: Codable {
    enum CodingKeys: String, CodingKey {
        case id
    }
}

