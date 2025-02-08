// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetGenresLibraryRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .path:
            return try serializePathParameterSerializable(self, with: format)
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetGenresLibraryRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetGenresLibraryRequest: PathParameterSerializable {
    func serializedPathParameters(formatOverride: SerializableFormat?) throws -> [String: String] {
        return [
            "sectionKey": try sectionKey.serialize(with: formatOverride ?? .path(explode: false)),
        ].compactMapValues { $0 }
    }
}

extension Operations.GetGenresLibraryRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: type, named: "type", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}
