// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetSearchAllLibrariesRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .header:
            return serializeModel(with: try serializedHeaderParameters(), format: format)
        case .path, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetSearchAllLibrariesRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetSearchAllLibrariesRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: query, named: "query", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: includeCollections, named: "includeCollections", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: includeExternalMedia, named: "includeExternalMedia", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: limit, named: "limit", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: searchTypes, named: "searchTypes", format: formatOverride ?? .query(style: .form, explode: false), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}

extension Operations.GetSearchAllLibrariesRequest: HeaderParameterSerializable {
    func serializedHeaderParameters() throws -> [SerializedParameter] {
        return [
            SerializedParameter(name: "X-Plex-Client-Identifier", serialized: try clientID.serialize(with: .header(explode: false)))
        ]
    }
}
