// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetLibraryItemsMediaGuid {
        /// Can be one of the following formats:
        /// imdb://tt13015952, tmdb://2434012, tvdb://7945991
        /// 
        public let id: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: Can be one of the following formats:
        /// imdb://tt13015952, tmdb://2434012, tvdb://7945991
        /// 
        ///
        public init(id: String) {
            self.id = id
        }
    }}

extension Operations.GetLibraryItemsMediaGuid: Codable {
    enum CodingKeys: String, CodingKey {
        case id
    }
}

