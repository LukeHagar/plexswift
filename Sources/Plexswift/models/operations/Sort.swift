// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Sort {
        /// The direction of the sort. Can be either `asc` or `desc`.
        /// 
        public let defaultDirection: Operations.DefaultDirection
        public let key: String
        public let title: String
        public let active: Bool?
        /// The direction of the sort. Can be either `asc` or `desc`.
        /// 
        public let activeDirection: Operations.ActiveDirection?
        public let `default`: String?
        public let descKey: String?
        public let firstCharacterKey: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter defaultDirection: The direction of the sort. Can be either `asc` or `desc`.
        /// 
        /// - Parameter activeDirection: The direction of the sort. Can be either `asc` or `desc`.
        /// 
        ///
        public init(defaultDirection: Operations.DefaultDirection, key: String, title: String, active: Bool? = nil, activeDirection: Operations.ActiveDirection? = nil, `default`: String? = nil, descKey: String? = nil, firstCharacterKey: String? = nil) {
            self.defaultDirection = defaultDirection
            self.key = key
            self.title = title
            self.active = active
            self.activeDirection = activeDirection
            self.`default` = `default`
            self.descKey = descKey
            self.firstCharacterKey = firstCharacterKey
        }
    }}

extension Operations.Sort: Codable {
    enum CodingKeys: String, CodingKey {
        case defaultDirection
        case key
        case title
        case active
        case activeDirection
        case `default` = "default"
        case descKey
        case firstCharacterKey
    }
}

