// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetPlaylistRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetPlaylistRequest", format: format.formatDescription)
        }
    }
}

extension Operations.GetPlaylistRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "playlistID": try playlistIDWrapper.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}
