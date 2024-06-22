// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct StatisticsBandwidth {
        public let accountID: Int?
        public let at: Int?
        public let bytes: Int?
        public let deviceID: Int?
        public let lan: Bool?
        public let timespan: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(accountID: Int? = nil, at: Int? = nil, bytes: Int? = nil, deviceID: Int? = nil, lan: Bool? = nil, timespan: Int? = nil) {
            self.accountID = accountID
            self.at = at
            self.bytes = bytes
            self.deviceID = deviceID
            self.lan = lan
            self.timespan = timespan
        }
    }
}

extension Operations.StatisticsBandwidth: Codable {
    enum CodingKeys: String, CodingKey {
        case accountID
        case at
        case bytes
        case deviceID
        case lan
        case timespan
    }
}

