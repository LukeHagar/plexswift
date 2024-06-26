// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.GetTokenRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .header:
            return serializeModel(with: try serializedHeaderParameters(), format: format)
        case .query, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetTokenRequest", format: format.formatDescription)
        }
    }
}

extension Operations.GetTokenRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "pinID": try pinID.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}

extension Operations.GetTokenRequest: HeaderParameterSerializable {
    func serializedHeaderParameters() throws -> [SerializedParameter] {
        return [
            SerializedParameter(name: "X-Plex-Client-Identifier", serialized: try xPlexClientIdentifier?.serialize(with: .header(explode: false)))
        ]
    }
}
