// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetUsersRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .header:
            return serializeModel(with: try serializedHeaderParameters(), format: format)
        case .path, .query, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetUsersRequest", format: format.formatDescription)
        }
    }
}

extension Operations.GetUsersRequest: HeaderParameterSerializable {
    func serializedHeaderParameters() throws -> [SerializedParameter] {
        return [
            SerializedParameter(name: "X-Plex-Client-Identifier", serialized: try clientID.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Token", serialized: try xPlexToken.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Features", serialized: try clientFeatures?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Product", serialized: try clientName?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Version", serialized: try clientVersion?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Device-Name", serialized: try deviceName?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Device", serialized: try deviceNickname?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Device-Screen-Resolution", serialized: try deviceScreenResolution?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Model", serialized: try model?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Platform", serialized: try platform?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Platform-Version", serialized: try platformVersion?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Language", serialized: try xPlexLanguage?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Session-Id", serialized: try xPlexSessionId?.serialize(with: .header(explode: false)))
        ]
    }
}
