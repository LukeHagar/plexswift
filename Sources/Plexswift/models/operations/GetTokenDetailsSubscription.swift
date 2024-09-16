// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetTokenDetailsSubscription {
        /// If the account's Plex Pass subscription is active
        public let active: Bool?
        /// List of features allowed on your Plex Pass subscription
        public let features: [Operations.GetTokenDetailsFeatures]?
        /// Payment service used for your Plex Pass subscription
        public let paymentService: String?
        /// Name of Plex Pass subscription plan
        public let plan: String?
        /// String representation of subscriptionActive
        public let status: Operations.GetTokenDetailsAuthenticationResponseStatus?
        /// Date the account subscribed to Plex Pass
        public let subscribedAt: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter active: If the account's Plex Pass subscription is active
        /// - Parameter features: List of features allowed on your Plex Pass subscription
        /// - Parameter paymentService: Payment service used for your Plex Pass subscription
        /// - Parameter plan: Name of Plex Pass subscription plan
        /// - Parameter status: String representation of subscriptionActive
        /// - Parameter subscribedAt: Date the account subscribed to Plex Pass
        ///
        public init(active: Bool? = nil, features: [Operations.GetTokenDetailsFeatures]? = nil, paymentService: String? = nil, plan: String? = nil, status: Operations.GetTokenDetailsAuthenticationResponseStatus? = nil, subscribedAt: String? = nil) {
            self.active = active
            self.features = features
            self.paymentService = paymentService
            self.plan = plan
            self.status = status
            self.subscribedAt = subscribedAt
        }
    }}

extension Operations.GetTokenDetailsSubscription: Codable {
    enum CodingKeys: String, CodingKey {
        case active
        case features
        case paymentService
        case plan
        case status
        case subscribedAt
    }
}

