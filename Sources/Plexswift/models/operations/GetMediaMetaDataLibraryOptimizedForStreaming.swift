// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Has this media been optimized for streaming. NOTE: This can be 0, 1, false or true
    public enum GetMediaMetaDataLibraryOptimizedForStreaming {
        case getMediaMetaDataLibrary1(Operations.GetMediaMetaDataLibrary1)
        case bool(Bool)
    }}

extension Operations.GetMediaMetaDataLibraryOptimizedForStreaming: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Operations.GetMediaMetaDataLibrary1(from: decoder) {
            self = .getMediaMetaDataLibrary1(value)
        } else if let value = try? Bool(from: decoder) {
            self = .bool(value)
        } else {
            throw PlexswiftError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .getMediaMetaDataLibrary1(let value):
            try value.encode(to: encoder)
        case .bool(let value):
            try value.encode(to: encoder)
        }
    }
}

