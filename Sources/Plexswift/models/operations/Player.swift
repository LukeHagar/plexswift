// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Player {
        public let address: String?
        public let local: Bool?
        public let machineIdentifier: String?
        public let model: String?
        public let platform: String?
        public let platformVersion: String?
        public let product: String?
        public let profile: String?
        public let relayed: Bool?
        public let remotePublicAddress: String?
        public let secure: Bool?
        public let state: String?
        public let title: String?
        public let userID: Int?
        public let version: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(address: String? = nil, local: Bool? = nil, machineIdentifier: String? = nil, model: String? = nil, platform: String? = nil, platformVersion: String? = nil, product: String? = nil, profile: String? = nil, relayed: Bool? = nil, remotePublicAddress: String? = nil, secure: Bool? = nil, state: String? = nil, title: String? = nil, userID: Int? = nil, version: String? = nil) {
            self.address = address
            self.local = local
            self.machineIdentifier = machineIdentifier
            self.model = model
            self.platform = platform
            self.platformVersion = platformVersion
            self.product = product
            self.profile = profile
            self.relayed = relayed
            self.remotePublicAddress = remotePublicAddress
            self.secure = secure
            self.state = state
            self.title = title
            self.userID = userID
            self.version = version
        }
    }}

extension Operations.Player: Codable {
    enum CodingKeys: String, CodingKey {
        case address
        case local
        case machineIdentifier
        case model
        case platform
        case platformVersion
        case product
        case profile
        case relayed
        case remotePublicAddress
        case secure
        case state
        case title
        case userID
        case version
    }
}

