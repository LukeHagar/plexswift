// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetStatisticsRequest: APIValue {
        /// The timespan to retrieve statistics for
        /// the exact meaning of this parameter is not known
        /// 
        public let timespan: Int?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter timespan: The timespan to retrieve statistics for
        /// the exact meaning of this parameter is not known
        /// 
        ///
        public init(timespan: Int? = nil) {
            self.timespan = timespan
        }
    }}
