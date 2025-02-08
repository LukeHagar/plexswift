// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetActorsLibraryRequest: APIValue {
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
        public let type: Operations.GetActorsLibraryQueryParamType

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
        ///
        public init(sectionKey: Int, type: Operations.GetActorsLibraryQueryParamType) {
            self.sectionKey = sectionKey
            self.type = type
        }
    }}
