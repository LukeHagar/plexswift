// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// The type of media to retrieve.
    /// 1 = movie
    /// 2 = show
    /// 3 = season
    /// 4 = episode
    /// E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
    /// 
    public enum GetTopWatchedContentQueryParamType: Int, Codable, APIValue {
        case movie = 1
        case show = 2
        case season = 3
        case episode = 4
    }}
