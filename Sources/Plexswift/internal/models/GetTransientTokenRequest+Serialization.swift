// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetTransientTokenRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .path, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetTransientTokenRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetTransientTokenRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: scope, named: "scope", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: type, named: "type", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}
