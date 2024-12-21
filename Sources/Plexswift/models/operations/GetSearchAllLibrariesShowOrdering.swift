// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Setting that indicates the episode ordering for the show
    /// None = Library default,
    /// tmdbAiring = The Movie Database (Aired),
    /// tvdbAiring = TheTVDB (Aired),
    /// tvdbDvd = TheTVDB (DVD),
    /// tvdbAbsolute = TheTVDB (Absolute)).
    /// 
    public enum GetSearchAllLibrariesShowOrdering: String, Codable, APIValue {
        case `none` = "None"
        case tmdbAiring = "tmdbAiring"
        case tvdbAiring = "tvdbAiring"
        case tvdbDvd = "tvdbDvd"
        case tvdbAbsolute = "tvdbAbsolute"
    }}
