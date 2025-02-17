// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetResourcesStatisticsMediaContainer {
        public let size: Int?
        public let statisticsResources: [Operations.StatisticsResources]?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(size: Int? = nil, statisticsResources: [Operations.StatisticsResources]? = nil) {
            self.size = size
            self.statisticsResources = statisticsResources
        }
    }}

extension Operations.GetResourcesStatisticsMediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case size
        case statisticsResources = "StatisticsResources"
    }
}

