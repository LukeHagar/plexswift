// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetSessionHistoryRequest: APIValue {
        /// Filter results by those that are related to a specific users id
        /// 
        public let accountId: Int?
        /// Filters content by field and direction/equality
        /// (Unknown if viewedAt is the only supported column)
        /// 
        public let filter: Operations.QueryParamFilter?
        /// Filters the results based on the id of a valid library section
        /// 
        public let librarySectionID: Int?
        /// Sorts the results by the specified field followed by the direction (asc, desc)
        /// 
        public let sort: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter accountId: Filter results by those that are related to a specific users id
        /// 
        /// - Parameter filter: Filters content by field and direction/equality
        /// (Unknown if viewedAt is the only supported column)
        /// 
        /// - Parameter librarySectionID: Filters the results based on the id of a valid library section
        /// 
        /// - Parameter sort: Sorts the results by the specified field followed by the direction (asc, desc)
        /// 
        ///
        public init(accountId: Int? = nil, filter: Operations.QueryParamFilter? = nil, librarySectionID: Int? = nil, sort: String? = nil) {
            self.accountId = accountId
            self.filter = filter
            self.librarySectionID = librarySectionID
            self.sort = sort
        }
    }}
