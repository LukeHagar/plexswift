// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct MediaContainer {
        public let allowCameraUpload: Bool?
        public let allowChannelAccess: Bool?
        public let allowMediaDeletion: Bool?
        public let allowSharing: Bool?
        public let allowSync: Bool?
        public let allowTuners: Bool?
        public let backgroundProcessing: Bool?
        public let certificate: Bool?
        public let companionProxy: Bool?
        public let countryCode: String?
        public let diagnostics: String?
        public let directory: [Operations.Directory]?
        public let eventStream: Bool?
        public let friendlyName: String?
        public let hubSearch: Bool?
        public let itemClusters: Bool?
        @DecimalSerialized
        public private(set) var livetv: Double?
        public let machineIdentifier: String?
        public let mediaProviders: Bool?
        public let multiuser: Bool?
        @DecimalSerialized
        public private(set) var musicAnalysis: Double?
        public let myPlex: Bool?
        public let myPlexMappingState: String?
        public let myPlexSigninState: String?
        public let myPlexSubscription: Bool?
        public let myPlexUsername: String?
        @DecimalSerialized
        public private(set) var offlineTranscode: Double?
        public let ownerFeatures: String?
        public let photoAutoTag: Bool?
        public let platform: String?
        public let platformVersion: String?
        public let pluginHost: Bool?
        public let pushNotifications: Bool?
        public let readOnlyLibraries: Bool?
        @DecimalSerialized
        public private(set) var size: Double?
        @DecimalSerialized
        public private(set) var streamingBrainABRVersion: Double?
        @DecimalSerialized
        public private(set) var streamingBrainVersion: Double?
        public let sync: Bool?
        @DecimalSerialized
        public private(set) var transcoderActiveVideoSessions: Double?
        public let transcoderAudio: Bool?
        public let transcoderLyrics: Bool?
        public let transcoderPhoto: Bool?
        public let transcoderSubtitles: Bool?
        public let transcoderVideo: Bool?
        public let transcoderVideoBitrates: String?
        public let transcoderVideoQualities: String?
        public let transcoderVideoResolutions: String?
        @DecimalSerialized
        public private(set) var updatedAt: Double?
        public let updater: Bool?
        public let version: String?
        public let voiceSearch: Bool?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(allowCameraUpload: Bool? = nil, allowChannelAccess: Bool? = nil, allowMediaDeletion: Bool? = nil, allowSharing: Bool? = nil, allowSync: Bool? = nil, allowTuners: Bool? = nil, backgroundProcessing: Bool? = nil, certificate: Bool? = nil, companionProxy: Bool? = nil, countryCode: String? = nil, diagnostics: String? = nil, directory: [Operations.Directory]? = nil, eventStream: Bool? = nil, friendlyName: String? = nil, hubSearch: Bool? = nil, itemClusters: Bool? = nil, livetv: Double? = nil, machineIdentifier: String? = nil, mediaProviders: Bool? = nil, multiuser: Bool? = nil, musicAnalysis: Double? = nil, myPlex: Bool? = nil, myPlexMappingState: String? = nil, myPlexSigninState: String? = nil, myPlexSubscription: Bool? = nil, myPlexUsername: String? = nil, offlineTranscode: Double? = nil, ownerFeatures: String? = nil, photoAutoTag: Bool? = nil, platform: String? = nil, platformVersion: String? = nil, pluginHost: Bool? = nil, pushNotifications: Bool? = nil, readOnlyLibraries: Bool? = nil, size: Double? = nil, streamingBrainABRVersion: Double? = nil, streamingBrainVersion: Double? = nil, sync: Bool? = nil, transcoderActiveVideoSessions: Double? = nil, transcoderAudio: Bool? = nil, transcoderLyrics: Bool? = nil, transcoderPhoto: Bool? = nil, transcoderSubtitles: Bool? = nil, transcoderVideo: Bool? = nil, transcoderVideoBitrates: String? = nil, transcoderVideoQualities: String? = nil, transcoderVideoResolutions: String? = nil, updatedAt: Double? = nil, updater: Bool? = nil, version: String? = nil, voiceSearch: Bool? = nil) {
            self.allowCameraUpload = allowCameraUpload
            self.allowChannelAccess = allowChannelAccess
            self.allowMediaDeletion = allowMediaDeletion
            self.allowSharing = allowSharing
            self.allowSync = allowSync
            self.allowTuners = allowTuners
            self.backgroundProcessing = backgroundProcessing
            self.certificate = certificate
            self.companionProxy = companionProxy
            self.countryCode = countryCode
            self.diagnostics = diagnostics
            self.directory = directory
            self.eventStream = eventStream
            self.friendlyName = friendlyName
            self.hubSearch = hubSearch
            self.itemClusters = itemClusters
            self._livetv = DecimalSerialized<Double?>(wrappedValue: livetv)
            self.machineIdentifier = machineIdentifier
            self.mediaProviders = mediaProviders
            self.multiuser = multiuser
            self._musicAnalysis = DecimalSerialized<Double?>(wrappedValue: musicAnalysis)
            self.myPlex = myPlex
            self.myPlexMappingState = myPlexMappingState
            self.myPlexSigninState = myPlexSigninState
            self.myPlexSubscription = myPlexSubscription
            self.myPlexUsername = myPlexUsername
            self._offlineTranscode = DecimalSerialized<Double?>(wrappedValue: offlineTranscode)
            self.ownerFeatures = ownerFeatures
            self.photoAutoTag = photoAutoTag
            self.platform = platform
            self.platformVersion = platformVersion
            self.pluginHost = pluginHost
            self.pushNotifications = pushNotifications
            self.readOnlyLibraries = readOnlyLibraries
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self._streamingBrainABRVersion = DecimalSerialized<Double?>(wrappedValue: streamingBrainABRVersion)
            self._streamingBrainVersion = DecimalSerialized<Double?>(wrappedValue: streamingBrainVersion)
            self.sync = sync
            self._transcoderActiveVideoSessions = DecimalSerialized<Double?>(wrappedValue: transcoderActiveVideoSessions)
            self.transcoderAudio = transcoderAudio
            self.transcoderLyrics = transcoderLyrics
            self.transcoderPhoto = transcoderPhoto
            self.transcoderSubtitles = transcoderSubtitles
            self.transcoderVideo = transcoderVideo
            self.transcoderVideoBitrates = transcoderVideoBitrates
            self.transcoderVideoQualities = transcoderVideoQualities
            self.transcoderVideoResolutions = transcoderVideoResolutions
            self._updatedAt = DecimalSerialized<Double?>(wrappedValue: updatedAt)
            self.updater = updater
            self.version = version
            self.voiceSearch = voiceSearch
        }
    }
}

extension Operations.MediaContainer: Codable {
    enum CodingKeys: String, CodingKey {
        case allowCameraUpload
        case allowChannelAccess
        case allowMediaDeletion
        case allowSharing
        case allowSync
        case allowTuners
        case backgroundProcessing
        case certificate
        case companionProxy
        case countryCode
        case diagnostics
        case directory = "Directory"
        case eventStream
        case friendlyName
        case hubSearch
        case itemClusters
        case livetv
        case machineIdentifier
        case mediaProviders
        case multiuser
        case musicAnalysis
        case myPlex
        case myPlexMappingState
        case myPlexSigninState
        case myPlexSubscription
        case myPlexUsername
        case offlineTranscode
        case ownerFeatures
        case photoAutoTag
        case platform
        case platformVersion
        case pluginHost
        case pushNotifications
        case readOnlyLibraries
        case size
        case streamingBrainABRVersion
        case streamingBrainVersion
        case sync
        case transcoderActiveVideoSessions
        case transcoderAudio
        case transcoderLyrics
        case transcoderPhoto
        case transcoderSubtitles
        case transcoderVideo
        case transcoderVideoBitrates
        case transcoderVideoQualities
        case transcoderVideoResolutions
        case updatedAt
        case updater
        case version
        case voiceSearch
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.allowCameraUpload = try container.decodeIfPresent(Bool.self, forKey: .allowCameraUpload)
        self.allowChannelAccess = try container.decodeIfPresent(Bool.self, forKey: .allowChannelAccess)
        self.allowMediaDeletion = try container.decodeIfPresent(Bool.self, forKey: .allowMediaDeletion)
        self.allowSharing = try container.decodeIfPresent(Bool.self, forKey: .allowSharing)
        self.allowSync = try container.decodeIfPresent(Bool.self, forKey: .allowSync)
        self.allowTuners = try container.decodeIfPresent(Bool.self, forKey: .allowTuners)
        self.backgroundProcessing = try container.decodeIfPresent(Bool.self, forKey: .backgroundProcessing)
        self.certificate = try container.decodeIfPresent(Bool.self, forKey: .certificate)
        self.companionProxy = try container.decodeIfPresent(Bool.self, forKey: .companionProxy)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.diagnostics = try container.decodeIfPresent(String.self, forKey: .diagnostics)
        self.directory = try container.decodeIfPresent([Operations.Directory].self, forKey: .directory)
        self.eventStream = try container.decodeIfPresent(Bool.self, forKey: .eventStream)
        self.friendlyName = try container.decodeIfPresent(String.self, forKey: .friendlyName)
        self.hubSearch = try container.decodeIfPresent(Bool.self, forKey: .hubSearch)
        self.itemClusters = try container.decodeIfPresent(Bool.self, forKey: .itemClusters)
        self._livetv = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .livetv) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.machineIdentifier = try container.decodeIfPresent(String.self, forKey: .machineIdentifier)
        self.mediaProviders = try container.decodeIfPresent(Bool.self, forKey: .mediaProviders)
        self.multiuser = try container.decodeIfPresent(Bool.self, forKey: .multiuser)
        self._musicAnalysis = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .musicAnalysis) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.myPlex = try container.decodeIfPresent(Bool.self, forKey: .myPlex)
        self.myPlexMappingState = try container.decodeIfPresent(String.self, forKey: .myPlexMappingState)
        self.myPlexSigninState = try container.decodeIfPresent(String.self, forKey: .myPlexSigninState)
        self.myPlexSubscription = try container.decodeIfPresent(Bool.self, forKey: .myPlexSubscription)
        self.myPlexUsername = try container.decodeIfPresent(String.self, forKey: .myPlexUsername)
        self._offlineTranscode = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .offlineTranscode) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.ownerFeatures = try container.decodeIfPresent(String.self, forKey: .ownerFeatures)
        self.photoAutoTag = try container.decodeIfPresent(Bool.self, forKey: .photoAutoTag)
        self.platform = try container.decodeIfPresent(String.self, forKey: .platform)
        self.platformVersion = try container.decodeIfPresent(String.self, forKey: .platformVersion)
        self.pluginHost = try container.decodeIfPresent(Bool.self, forKey: .pluginHost)
        self.pushNotifications = try container.decodeIfPresent(Bool.self, forKey: .pushNotifications)
        self.readOnlyLibraries = try container.decodeIfPresent(Bool.self, forKey: .readOnlyLibraries)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._streamingBrainABRVersion = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .streamingBrainABRVersion) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._streamingBrainVersion = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .streamingBrainVersion) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.sync = try container.decodeIfPresent(Bool.self, forKey: .sync)
        self._transcoderActiveVideoSessions = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .transcoderActiveVideoSessions) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.transcoderAudio = try container.decodeIfPresent(Bool.self, forKey: .transcoderAudio)
        self.transcoderLyrics = try container.decodeIfPresent(Bool.self, forKey: .transcoderLyrics)
        self.transcoderPhoto = try container.decodeIfPresent(Bool.self, forKey: .transcoderPhoto)
        self.transcoderSubtitles = try container.decodeIfPresent(Bool.self, forKey: .transcoderSubtitles)
        self.transcoderVideo = try container.decodeIfPresent(Bool.self, forKey: .transcoderVideo)
        self.transcoderVideoBitrates = try container.decodeIfPresent(String.self, forKey: .transcoderVideoBitrates)
        self.transcoderVideoQualities = try container.decodeIfPresent(String.self, forKey: .transcoderVideoQualities)
        self.transcoderVideoResolutions = try container.decodeIfPresent(String.self, forKey: .transcoderVideoResolutions)
        self._updatedAt = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .updatedAt) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.updater = try container.decodeIfPresent(Bool.self, forKey: .updater)
        self.version = try container.decodeIfPresent(String.self, forKey: .version)
        self.voiceSearch = try container.decodeIfPresent(Bool.self, forKey: .voiceSearch)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.allowCameraUpload, forKey: .allowCameraUpload)
        try container.encodeIfPresent(self.allowChannelAccess, forKey: .allowChannelAccess)
        try container.encodeIfPresent(self.allowMediaDeletion, forKey: .allowMediaDeletion)
        try container.encodeIfPresent(self.allowSharing, forKey: .allowSharing)
        try container.encodeIfPresent(self.allowSync, forKey: .allowSync)
        try container.encodeIfPresent(self.allowTuners, forKey: .allowTuners)
        try container.encodeIfPresent(self.backgroundProcessing, forKey: .backgroundProcessing)
        try container.encodeIfPresent(self.certificate, forKey: .certificate)
        try container.encodeIfPresent(self.companionProxy, forKey: .companionProxy)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.diagnostics, forKey: .diagnostics)
        try container.encodeIfPresent(self.directory, forKey: .directory)
        try container.encodeIfPresent(self.eventStream, forKey: .eventStream)
        try container.encodeIfPresent(self.friendlyName, forKey: .friendlyName)
        try container.encodeIfPresent(self.hubSearch, forKey: .hubSearch)
        try container.encodeIfPresent(self.itemClusters, forKey: .itemClusters)
        if self.livetv != nil {
            try container.encode(self._livetv, forKey: .livetv)
        }
        try container.encodeIfPresent(self.machineIdentifier, forKey: .machineIdentifier)
        try container.encodeIfPresent(self.mediaProviders, forKey: .mediaProviders)
        try container.encodeIfPresent(self.multiuser, forKey: .multiuser)
        if self.musicAnalysis != nil {
            try container.encode(self._musicAnalysis, forKey: .musicAnalysis)
        }
        try container.encodeIfPresent(self.myPlex, forKey: .myPlex)
        try container.encodeIfPresent(self.myPlexMappingState, forKey: .myPlexMappingState)
        try container.encodeIfPresent(self.myPlexSigninState, forKey: .myPlexSigninState)
        try container.encodeIfPresent(self.myPlexSubscription, forKey: .myPlexSubscription)
        try container.encodeIfPresent(self.myPlexUsername, forKey: .myPlexUsername)
        if self.offlineTranscode != nil {
            try container.encode(self._offlineTranscode, forKey: .offlineTranscode)
        }
        try container.encodeIfPresent(self.ownerFeatures, forKey: .ownerFeatures)
        try container.encodeIfPresent(self.photoAutoTag, forKey: .photoAutoTag)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encodeIfPresent(self.platformVersion, forKey: .platformVersion)
        try container.encodeIfPresent(self.pluginHost, forKey: .pluginHost)
        try container.encodeIfPresent(self.pushNotifications, forKey: .pushNotifications)
        try container.encodeIfPresent(self.readOnlyLibraries, forKey: .readOnlyLibraries)
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        if self.streamingBrainABRVersion != nil {
            try container.encode(self._streamingBrainABRVersion, forKey: .streamingBrainABRVersion)
        }
        if self.streamingBrainVersion != nil {
            try container.encode(self._streamingBrainVersion, forKey: .streamingBrainVersion)
        }
        try container.encodeIfPresent(self.sync, forKey: .sync)
        if self.transcoderActiveVideoSessions != nil {
            try container.encode(self._transcoderActiveVideoSessions, forKey: .transcoderActiveVideoSessions)
        }
        try container.encodeIfPresent(self.transcoderAudio, forKey: .transcoderAudio)
        try container.encodeIfPresent(self.transcoderLyrics, forKey: .transcoderLyrics)
        try container.encodeIfPresent(self.transcoderPhoto, forKey: .transcoderPhoto)
        try container.encodeIfPresent(self.transcoderSubtitles, forKey: .transcoderSubtitles)
        try container.encodeIfPresent(self.transcoderVideo, forKey: .transcoderVideo)
        try container.encodeIfPresent(self.transcoderVideoBitrates, forKey: .transcoderVideoBitrates)
        try container.encodeIfPresent(self.transcoderVideoQualities, forKey: .transcoderVideoQualities)
        try container.encodeIfPresent(self.transcoderVideoResolutions, forKey: .transcoderVideoResolutions)
        if self.updatedAt != nil {
            try container.encode(self._updatedAt, forKey: .updatedAt)
        }
        try container.encodeIfPresent(self.updater, forKey: .updater)
        try container.encodeIfPresent(self.version, forKey: .version)
        try container.encodeIfPresent(self.voiceSearch, forKey: .voiceSearch)
    }
}

extension Operations.MediaContainer {
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
    var livetvWrapper: DecimalSerialized<Double?> {
        return _livetv
    }
    var musicAnalysisWrapper: DecimalSerialized<Double?> {
        return _musicAnalysis
    }
    var offlineTranscodeWrapper: DecimalSerialized<Double?> {
        return _offlineTranscode
    }
    var streamingBrainABRVersionWrapper: DecimalSerialized<Double?> {
        return _streamingBrainABRVersion
    }
    var streamingBrainVersionWrapper: DecimalSerialized<Double?> {
        return _streamingBrainVersion
    }
    var transcoderActiveVideoSessionsWrapper: DecimalSerialized<Double?> {
        return _transcoderActiveVideoSessions
    }
    var updatedAtWrapper: DecimalSerialized<Double?> {
        return _updatedAt
    }
}
