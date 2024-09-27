// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetRecentlyAddedLibraryRequest: APIValue {
        /// The type of media to retrieve.
        /// 1 = movie
        /// 2 = show
        /// 3 = season
        /// 4 = episode
        /// E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
        /// 
        public let type: Operations.QueryParamType
        public let contentDirectoryID: Int?
        /// Adds the Meta object to the response
        /// 
        public let includeMeta: Operations.QueryParamIncludeMeta?
        public let pinnedContentDirectoryID: [Int]?
        /// The library section ID for filtering content.
        public let sectionID: Int?
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
        /// - Parameter type: The type of media to retrieve.
        /// 1 = movie
        /// 2 = show
        /// 3 = season
        /// 4 = episode
        /// E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
        /// 
        /// - Parameter includeMeta: Adds the Meta object to the response
        /// 
        /// - Parameter sectionID: The library section ID for filtering content.
        /// - Parameter xPlexContainerSize: The number of items to return. If not specified, all items will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 50
        /// 
        /// - Parameter xPlexContainerStart: The index of the first item to return. If not specified, the first item will be returned.
        /// If the number of items exceeds the limit, the response will be paginated.
        /// By default this is 0
        /// 
        ///
        public init(type: Operations.QueryParamType, contentDirectoryID: Int? = nil, includeMeta: Operations.QueryParamIncludeMeta? = nil, pinnedContentDirectoryID: [Int]? = nil, sectionID: Int? = nil, xPlexContainerSize: Int? = nil, xPlexContainerStart: Int? = nil) {
            self.type = type
            self.contentDirectoryID = contentDirectoryID
            self.includeMeta = includeMeta
            self.pinnedContentDirectoryID = pinnedContentDirectoryID
            self.sectionID = sectionID
            self.xPlexContainerSize = xPlexContainerSize
            self.xPlexContainerStart = xPlexContainerStart
        }
    }}