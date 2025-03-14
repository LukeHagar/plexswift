// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllMediaLibraryRequest: APIValue {
        /// The unique key of the Plex library. 
        /// Note: This is unique in the context of the Plex server.
        /// 
        public let sectionKey: Int
        /// The type of media to retrieve or filter by.
        /// 1 = movie
        /// 2 = show
        /// 3 = season
        /// 4 = episode
        /// E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
        /// 
        public let type: Operations.GetAllMediaLibraryQueryParamType
        public let includeAdvanced: Operations.IncludeAdvanced?
        public let includeCollections: Operations.QueryParamIncludeCollections?
        public let includeExternalMedia: Operations.QueryParamIncludeExternalMedia?
        /// Adds the Guid object to the response
        /// 
        public let includeGuids: Operations.QueryParamIncludeGuids?
        /// Adds the Meta object to the response
        /// 
        public let includeMeta: Operations.GetAllMediaLibraryQueryParamIncludeMeta?
        /// The number of items to return. If not specified, all items will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 50
        /// 
        public let xPlexContainerSize: Int?
        /// The index of the first item to return. If not specified, the first item will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 0
        /// 
        public let xPlexContainerStart: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter sectionKey: The unique key of the Plex library. 
        /// Note: This is unique in the context of the Plex server.
        /// 
        /// - Parameter type: The type of media to retrieve or filter by.
        /// 1 = movie
        /// 2 = show
        /// 3 = season
        /// 4 = episode
        /// E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
        /// 
        /// - Parameter includeGuids: Adds the Guid object to the response
        /// 
        /// - Parameter includeMeta: Adds the Meta object to the response
        /// 
        /// - Parameter xPlexContainerSize: The number of items to return. If not specified, all items will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 50
        /// 
        /// - Parameter xPlexContainerStart: The index of the first item to return. If not specified, the first item will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 0
        /// 
        ///
        public init(sectionKey: Int, type: Operations.GetAllMediaLibraryQueryParamType, includeAdvanced: Operations.IncludeAdvanced? = nil, includeCollections: Operations.QueryParamIncludeCollections? = nil, includeExternalMedia: Operations.QueryParamIncludeExternalMedia? = nil, includeGuids: Operations.QueryParamIncludeGuids? = nil, includeMeta: Operations.GetAllMediaLibraryQueryParamIncludeMeta? = nil, xPlexContainerSize: Int? = nil, xPlexContainerStart: Int? = nil) {
            self.sectionKey = sectionKey
            self.type = type
            self.includeAdvanced = includeAdvanced
            self.includeCollections = includeCollections
            self.includeExternalMedia = includeExternalMedia
            self.includeGuids = includeGuids
            self.includeMeta = includeMeta
            self.xPlexContainerSize = xPlexContainerSize
            self.xPlexContainerStart = xPlexContainerStart
        }
    }}
