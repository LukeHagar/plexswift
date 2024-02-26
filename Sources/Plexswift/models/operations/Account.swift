// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct Account {
        public let autoSelectAudio: Bool?
        public let defaultAudioLanguage: String?
        public let defaultSubtitleLanguage: String?
        public let id: Int?
        public let key: String?
        public let name: String?
        public let subtitleMode: Int?
        public let thumb: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(autoSelectAudio: Bool? = nil, defaultAudioLanguage: String? = nil, defaultSubtitleLanguage: String? = nil, id: Int? = nil, key: String? = nil, name: String? = nil, subtitleMode: Int? = nil, thumb: String? = nil) {
            self.autoSelectAudio = autoSelectAudio
            self.defaultAudioLanguage = defaultAudioLanguage
            self.defaultSubtitleLanguage = defaultSubtitleLanguage
            self.id = id
            self.key = key
            self.name = name
            self.subtitleMode = subtitleMode
            self.thumb = thumb
        }
    }
}

extension Operations.Account: Codable {
    enum CodingKeys: String, CodingKey {
        case autoSelectAudio
        case defaultAudioLanguage
        case defaultSubtitleLanguage
        case id
        case key
        case name
        case subtitleMode
        case thumb
    }
}
