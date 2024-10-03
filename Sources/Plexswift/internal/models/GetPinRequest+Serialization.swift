// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetPinRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .header:
            return serializeModel(with: try serializedHeaderParameters(), format: format)
        case .path, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetPinRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetPinRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: strong, named: "strong", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}

extension Operations.GetPinRequest: HeaderParameterSerializable {
    func serializedHeaderParameters() throws -> [SerializedParameter] {
        return [
            SerializedParameter(name: "X-Plex-Client-Identifier", serialized: try clientID?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Product", serialized: try clientName?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Version", serialized: try clientVersion?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Device", serialized: try deviceNickname?.serialize(with: .header(explode: false))),
            SerializedParameter(name: "X-Plex-Platform", serialized: try platform?.serialize(with: .header(explode: false)))
        ]
    }
}
