// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Logged in user details
    public struct GetTokenDetailsUserPlexAccount {
        /// Unknown
        public let adsConsent: Bool
        /// Unknown
        @DateTime
        public private(set) var adsConsentReminderAt: Date
        /// Unknown
        @DateTime
        public private(set) var adsConsentSetAt: Date
        /// Unknown
        public let anonymous: Bool
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
        /// Your current mailing list status
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
        public let subscriptions: [Operations.GetTokenDetailsSubscription]
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

        /// Creates an object with the specified parameters
        ///
        /// - Parameter adsConsent: Unknown
        /// - Parameter adsConsentReminderAt: Unknown
        /// - Parameter adsConsentSetAt: Unknown
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
        /// - Parameter mailingListStatus: Your current mailing list status
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
        public init(adsConsent: Bool, adsConsentReminderAt: Date, adsConsentSetAt: Date, anonymous: Bool, authToken: String, backupCodesCreated: Bool, confirmed: Bool, country: String, email: String, emailOnlyAuth: Bool, entitlements: [String], experimentalFeatures: Bool, friendlyName: String, guest: Bool, hasPassword: Bool, home: Bool, homeAdmin: Bool, homeSize: Int, id: Int, joinedAt: Int, locale: String, mailingListActive: Bool, mailingListStatus: Operations.MailingListStatus, maxHomeSize: Int, profile: Operations.UserProfile, protected: Bool, rememberExpiresAt: Int, restricted: Bool, scrobbleTypes: String, services: [Operations.Services], subscription: Operations.Subscription, subscriptionDescription: String, subscriptions: [Operations.GetTokenDetailsSubscription], thumb: String, title: String, twoFactorEnabled: Bool, username: String, uuid: String, pin: String? = nil, roles: [String]? = nil) {
            self.adsConsent = adsConsent
            self._adsConsentReminderAt = DateTime<Date>(wrappedValue: adsConsentReminderAt)
            self._adsConsentSetAt = DateTime<Date>(wrappedValue: adsConsentSetAt)
            self.anonymous = anonymous
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
            self.subscriptions = subscriptions
            self.thumb = thumb
            self.title = title
            self.twoFactorEnabled = twoFactorEnabled
            self.username = username
            self.uuid = uuid
            self.pin = pin
            self.roles = roles
        }
    }}

extension Operations.GetTokenDetailsUserPlexAccount: Codable {
    enum CodingKeys: String, CodingKey {
        case adsConsent
        case adsConsentReminderAt
        case adsConsentSetAt
        case anonymous
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
        case subscriptions
        case thumb
        case title
        case twoFactorEnabled
        case username
        case uuid
        case pin
        case roles
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.adsConsent = try container.decode(Bool.self, forKey: .adsConsent)
        self._adsConsentReminderAt = try container.decode(DateTime<Date>.self, forKey: .adsConsentReminderAt)
        self._adsConsentSetAt = try container.decode(DateTime<Date>.self, forKey: .adsConsentSetAt)
        self.anonymous = try container.decode(Bool.self, forKey: .anonymous)
        self.authToken = try container.decode(String.self, forKey: .authToken)
        self.backupCodesCreated = try container.decode(Bool.self, forKey: .backupCodesCreated)
        self.confirmed = try container.decode(Bool.self, forKey: .confirmed)
        self.country = try container.decode(String.self, forKey: .country)
        self.email = try container.decode(String.self, forKey: .email)
        self.emailOnlyAuth = try container.decode(Bool.self, forKey: .emailOnlyAuth)
        self.entitlements = try container.decode([String].self, forKey: .entitlements)
        self.experimentalFeatures = try container.decode(Bool.self, forKey: .experimentalFeatures)
        self.friendlyName = try container.decode(String.self, forKey: .friendlyName)
        self.guest = try container.decode(Bool.self, forKey: .guest)
        self.hasPassword = try container.decode(Bool.self, forKey: .hasPassword)
        self.home = try container.decode(Bool.self, forKey: .home)
        self.homeAdmin = try container.decode(Bool.self, forKey: .homeAdmin)
        self.homeSize = try container.decode(Int.self, forKey: .homeSize)
        self.id = try container.decode(Int.self, forKey: .id)
        self.joinedAt = try container.decode(Int.self, forKey: .joinedAt)
        self.locale = try container.decode(String.self, forKey: .locale)
        self.mailingListActive = try container.decode(Bool.self, forKey: .mailingListActive)
        self.mailingListStatus = try container.decode(Operations.MailingListStatus.self, forKey: .mailingListStatus)
        self.maxHomeSize = try container.decode(Int.self, forKey: .maxHomeSize)
        self.profile = try container.decode(Operations.UserProfile.self, forKey: .profile)
        self.protected = try container.decode(Bool.self, forKey: .protected)
        self.rememberExpiresAt = try container.decode(Int.self, forKey: .rememberExpiresAt)
        self.restricted = try container.decode(Bool.self, forKey: .restricted)
        self.scrobbleTypes = try container.decode(String.self, forKey: .scrobbleTypes)
        self.services = try container.decode([Operations.Services].self, forKey: .services)
        self.subscription = try container.decode(Operations.Subscription.self, forKey: .subscription)
        self.subscriptionDescription = try container.decode(String.self, forKey: .subscriptionDescription)
        self.subscriptions = try container.decode([Operations.GetTokenDetailsSubscription].self, forKey: .subscriptions)
        self.thumb = try container.decode(String.self, forKey: .thumb)
        self.title = try container.decode(String.self, forKey: .title)
        self.twoFactorEnabled = try container.decode(Bool.self, forKey: .twoFactorEnabled)
        self.username = try container.decode(String.self, forKey: .username)
        self.uuid = try container.decode(String.self, forKey: .uuid)
        self.pin = try container.decodeIfPresent(String.self, forKey: .pin)
        self.roles = try container.decodeIfPresent([String].self, forKey: .roles)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.adsConsent, forKey: .adsConsent)
        try container.encode(self._adsConsentReminderAt, forKey: .adsConsentReminderAt)
        try container.encode(self._adsConsentSetAt, forKey: .adsConsentSetAt)
        try container.encode(self.anonymous, forKey: .anonymous)
        try container.encode(self.authToken, forKey: .authToken)
        try container.encode(self.backupCodesCreated, forKey: .backupCodesCreated)
        try container.encode(self.confirmed, forKey: .confirmed)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.emailOnlyAuth, forKey: .emailOnlyAuth)
        try container.encode(self.entitlements, forKey: .entitlements)
        try container.encode(self.experimentalFeatures, forKey: .experimentalFeatures)
        try container.encode(self.friendlyName, forKey: .friendlyName)
        try container.encode(self.guest, forKey: .guest)
        try container.encode(self.hasPassword, forKey: .hasPassword)
        try container.encode(self.home, forKey: .home)
        try container.encode(self.homeAdmin, forKey: .homeAdmin)
        try container.encode(self.homeSize, forKey: .homeSize)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.joinedAt, forKey: .joinedAt)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.mailingListActive, forKey: .mailingListActive)
        try container.encode(self.mailingListStatus, forKey: .mailingListStatus)
        try container.encode(self.maxHomeSize, forKey: .maxHomeSize)
        try container.encode(self.profile, forKey: .profile)
        try container.encode(self.protected, forKey: .protected)
        try container.encode(self.rememberExpiresAt, forKey: .rememberExpiresAt)
        try container.encode(self.restricted, forKey: .restricted)
        try container.encode(self.scrobbleTypes, forKey: .scrobbleTypes)
        try container.encode(self.services, forKey: .services)
        try container.encode(self.subscription, forKey: .subscription)
        try container.encode(self.subscriptionDescription, forKey: .subscriptionDescription)
        try container.encode(self.subscriptions, forKey: .subscriptions)
        try container.encode(self.thumb, forKey: .thumb)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.twoFactorEnabled, forKey: .twoFactorEnabled)
        try container.encode(self.username, forKey: .username)
        try container.encode(self.uuid, forKey: .uuid)
        try container.encodeIfPresent(self.pin, forKey: .pin)
        try container.encodeIfPresent(self.roles, forKey: .roles)
    }
}

extension Operations.GetTokenDetailsUserPlexAccount {
    var adsConsentReminderAtWrapper: DateTime<Date> {
        return _adsConsentReminderAt
    }
    var adsConsentSetAtWrapper: DateTime<Date> {
        return _adsConsentSetAt
    }
}
