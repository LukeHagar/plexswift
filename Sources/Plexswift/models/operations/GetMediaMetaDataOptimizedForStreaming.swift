// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// Has this media been optimized for streaming. NOTE: This can be 0, 1, false or true
    public enum GetMediaMetaDataOptimizedForStreaming {
        case getMediaMetaData1(Operations.GetMediaMetaData1)
        case bool(Bool)
    }}

extension Operations.GetMediaMetaDataOptimizedForStreaming: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Operations.GetMediaMetaData1(from: decoder) {
            self = .getMediaMetaData1(value)
        } else if let value = try? Bool(from: decoder) {
            self = .bool(value)
        } else {
            throw PlexswiftError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .getMediaMetaData1(let value):
            try value.encode(to: encoder)
        case .bool(let value):
            try value.encode(to: encoder)
        }
    }
}

