// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.GetGlobalHubsRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .path, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetGlobalHubsRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetGlobalHubsRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        if count != nil {
            try builder.addQueryParameters(from: countWrapper, named: "count", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        }
        try builder.addQueryParameters(from: onlyTransient, named: "onlyTransient", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}
