// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSearchAllLibrariesRequest: APIValue {
        /// An opaque identifier unique to the client (UUID, serial number, or other unique device ID)
        public let clientID: String
        /// The search query term.
        public let query: String
        /// Whether to include collections in the search results.
        public let includeCollections: Operations.GetSearchAllLibrariesQueryParamIncludeCollections?
        /// Whether to include external media in the search results.
        public let includeExternalMedia: Operations.GetSearchAllLibrariesQueryParamIncludeExternalMedia?
        /// Limit the number of results returned.
        public let limit: Int?
        /// A comma-separated list of search types to include. Valid values are: movies, music, otherVideos, people, tv.
        /// 
        public let searchTypes: [Operations.SearchTypes]?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter clientID: An opaque identifier unique to the client (UUID, serial number, or other unique device ID)
        /// - Parameter query: The search query term.
        /// - Parameter includeCollections: Whether to include collections in the search results.
        /// - Parameter includeExternalMedia: Whether to include external media in the search results.
        /// - Parameter limit: Limit the number of results returned.
        /// - Parameter searchTypes: A comma-separated list of search types to include. Valid values are: movies, music, otherVideos, people, tv.
        /// 
        ///
        public init(clientID: String, query: String, includeCollections: Operations.GetSearchAllLibrariesQueryParamIncludeCollections? = nil, includeExternalMedia: Operations.GetSearchAllLibrariesQueryParamIncludeExternalMedia? = nil, limit: Int? = nil, searchTypes: [Operations.SearchTypes]? = nil) {
            self.clientID = clientID
            self.query = query
            self.includeCollections = includeCollections
            self.includeExternalMedia = includeExternalMedia
            self.limit = limit
            self.searchTypes = searchTypes
        }
    }}
