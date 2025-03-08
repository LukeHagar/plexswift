// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Logged in user details
    public struct GetTokenDetailsUserPlexAccount {
        /// Unknown
        public let adsConsent: Bool
        public let adsConsentReminderAt: Int
        public let adsConsentSetAt: Int
        /// Unknown
        public let anonymous: Bool
        public let attributionPartner: String
        /// The account token
        public let authToken: String
        /// If the two-factor authentication backup codes have been created
        public let backupCodesCreated: Bool
        /// If the account has been confirmed
        public let confirmed: Bool
        /// The account country
        public let country: String
        /// The account email address
        public let email: String
        /// If login with email only is enabled
        public let emailOnlyAuth: Bool
        /// List of devices your allowed to use with this account
        public let entitlements: [String]
        /// If experimental features are enabled
        public let experimentalFeatures: Bool
        /// Your account full name
        public let friendlyName: String
        /// If the account is a Plex Home guest user
        public let guest: Bool
        /// If the account has a password
        public let hasPassword: Bool
        /// If the account is a Plex Home user
        public let home: Bool
        /// If the account is the Plex Home admin
        public let homeAdmin: Bool
        /// The number of accounts in the Plex Home
        public let homeSize: Int
        /// The Plex account ID
        public let id: Int
        /// Unix epoch datetime in seconds
        public let joinedAt: Int
        /// The account locale
        public let locale: String
        /// If you are subscribed to the Plex newsletter
        public let mailingListActive: Bool
        /// Your current mailing list status (active or unsubscribed)
        public let mailingListStatus: Operations.MailingListStatus
        /// The maximum number of accounts allowed in the Plex Home
        public let maxHomeSize: Int
        public let profile: Operations.UserProfile
        /// If the account has a Plex Home PIN enabled
        public let protected: Bool
        /// Unix epoch datetime in seconds
        public let rememberExpiresAt: Int
        /// If the account is a Plex Home managed user
        public let restricted: Bool
        /// Unknown
        public let scrobbleTypes: String
        public let services: [Operations.Services]
        /// If the account’s Plex Pass subscription is active
        public let subscription: Operations.Subscription
        /// Description of the Plex Pass subscription
        public let subscriptionDescription: String
        /// URL of the account thumbnail
        public let thumb: String
        /// The title of the account (username or friendly name)
        public let title: String
        /// If two-factor authentication is enabled
        public let twoFactorEnabled: Bool
        /// The account username
        public let username: String
        /// The account UUID
        public let uuid: String
        /// [Might be removed] The hashed Plex Home PIN 
        @available(*, deprecated, message: "This will be removed in a future release, please migrate away from it as soon as possible")
        public let pin: String?
        /// [Might be removed] List of account roles. Plexpass membership listed here
        public let roles: [String]?
        public let subscriptions: [Operations.GetTokenDetailsSubscription]?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter adsConsent: Unknown
        /// - Parameter anonymous: Unknown
        /// - Parameter authToken: The account token
        /// - Parameter backupCodesCreated: If the two-factor authentication backup codes have been created
        /// - Parameter confirmed: If the account has been confirmed
        /// - Parameter country: The account country
        /// - Parameter email: The account email address
        /// - Parameter emailOnlyAuth: If login with email only is enabled
        /// - Parameter entitlements: List of devices your allowed to use with this account
        /// - Parameter experimentalFeatures: If experimental features are enabled
        /// - Parameter friendlyName: Your account full name
        /// - Parameter guest: If the account is a Plex Home guest user
        /// - Parameter hasPassword: If the account has a password
        /// - Parameter home: If the account is a Plex Home user
        /// - Parameter homeAdmin: If the account is the Plex Home admin
        /// - Parameter homeSize: The number of accounts in the Plex Home
        /// - Parameter id: The Plex account ID
        /// - Parameter joinedAt: Unix epoch datetime in seconds
        /// - Parameter locale: The account locale
        /// - Parameter mailingListActive: If you are subscribed to the Plex newsletter
        /// - Parameter mailingListStatus: Your current mailing list status (active or unsubscribed)
        /// - Parameter maxHomeSize: The maximum number of accounts allowed in the Plex Home
        /// - Parameter protected: If the account has a Plex Home PIN enabled
        /// - Parameter rememberExpiresAt: Unix epoch datetime in seconds
        /// - Parameter restricted: If the account is a Plex Home managed user
        /// - Parameter scrobbleTypes: Unknown
        /// - Parameter subscription: If the account’s Plex Pass subscription is active
        /// - Parameter subscriptionDescription: Description of the Plex Pass subscription
        /// - Parameter thumb: URL of the account thumbnail
        /// - Parameter title: The title of the account (username or friendly name)
        /// - Parameter twoFactorEnabled: If two-factor authentication is enabled
        /// - Parameter username: The account username
        /// - Parameter uuid: The account UUID
        /// - Parameter pin: [Might be removed] The hashed Plex Home PIN 
        /// - Parameter roles: [Might be removed] List of account roles. Plexpass membership listed here
        ///
        @available(*, deprecated, message: "This initializer uses deprecated fields and will be removed in a future version.")
        public init(adsConsent: Bool, adsConsentReminderAt: Int, adsConsentSetAt: Int, anonymous: Bool, attributionPartner: String, authToken: String, backupCodesCreated: Bool, confirmed: Bool, country: String, email: String, emailOnlyAuth: Bool, entitlements: [String], experimentalFeatures: Bool, friendlyName: String, guest: Bool, hasPassword: Bool, home: Bool, homeAdmin: Bool, homeSize: Int, id: Int, joinedAt: Int, locale: String, mailingListActive: Bool, mailingListStatus: Operations.MailingListStatus, maxHomeSize: Int, profile: Operations.UserProfile, protected: Bool, rememberExpiresAt: Int, restricted: Bool, scrobbleTypes: String, services: [Operations.Services], subscription: Operations.Subscription, subscriptionDescription: String, thumb: String, title: String, twoFactorEnabled: Bool, username: String, uuid: String, pin: String? = nil, roles: [String]? = nil, subscriptions: [Operations.GetTokenDetailsSubscription]? = nil) {
            self.adsConsent = adsConsent
            self.adsConsentReminderAt = adsConsentReminderAt
            self.adsConsentSetAt = adsConsentSetAt
            self.anonymous = anonymous
            self.attributionPartner = attributionPartner
            self.authToken = authToken
            self.backupCodesCreated = backupCodesCreated
            self.confirmed = confirmed
            self.country = country
            self.email = email
            self.emailOnlyAuth = emailOnlyAuth
            self.entitlements = entitlements
            self.experimentalFeatures = experimentalFeatures
            self.friendlyName = friendlyName
            self.guest = guest
            self.hasPassword = hasPassword
            self.home = home
            self.homeAdmin = homeAdmin
            self.homeSize = homeSize
            self.id = id
            self.joinedAt = joinedAt
            self.locale = locale
            self.mailingListActive = mailingListActive
            self.mailingListStatus = mailingListStatus
            self.maxHomeSize = maxHomeSize
            self.profile = profile
            self.protected = protected
            self.rememberExpiresAt = rememberExpiresAt
            self.restricted = restricted
            self.scrobbleTypes = scrobbleTypes
            self.services = services
            self.subscription = subscription
            self.subscriptionDescription = subscriptionDescription
            self.thumb = thumb
            self.title = title
            self.twoFactorEnabled = twoFactorEnabled
            self.username = username
            self.uuid = uuid
            self.pin = pin
            self.roles = roles
            self.subscriptions = subscriptions
        }
    }}

extension Operations.GetTokenDetailsUserPlexAccount: Codable {
    enum CodingKeys: String, CodingKey {
        case adsConsent
        case adsConsentReminderAt
        case adsConsentSetAt
        case anonymous
        case attributionPartner
        case authToken
        case backupCodesCreated
        case confirmed
        case country
        case email
        case emailOnlyAuth
        case entitlements
        case experimentalFeatures
        case friendlyName
        case guest
        case hasPassword
        case home
        case homeAdmin
        case homeSize
        case id
        case joinedAt
        case locale
        case mailingListActive
        case mailingListStatus
        case maxHomeSize
        case profile
        case protected
        case rememberExpiresAt
        case restricted
        case scrobbleTypes
        case services
        case subscription
        case subscriptionDescription
        case thumb
        case title
        case twoFactorEnabled
        case username
        case uuid
        case pin
        case roles
        case subscriptions
    }
}

