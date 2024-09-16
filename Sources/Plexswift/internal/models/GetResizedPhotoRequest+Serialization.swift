// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.GetResizedPhotoRequest: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        switch format {
        case .query:
            return try serializeQueryParameterSerializable(self, with: format)
        case .path, .header, .multipart, .form:
            throw SerializationError.invalidSerializationParameter(type: "Operations.GetResizedPhotoRequest", format: format.formatDescription)
        }
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return try serializedQueryParameters(with: nil, formatOverride: format)
    }
}

extension Operations.GetResizedPhotoRequest: QueryParameterSerializable {
    func serializedQueryParameters(with parameterDefaults: ParameterDefaults?, formatOverride: SerializableFormat?) throws -> [QueryParameter] {
        let builder = QueryParameterBuilder()
        try builder.addQueryParameters(from: blurWrapper, named: "blur", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: heightWrapper, named: "height", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: minSize, named: "minSize", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: opacity, named: "opacity", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: upscale, named: "upscale", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: url, named: "url", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        try builder.addQueryParameters(from: widthWrapper, named: "width", format: formatOverride ?? .query(style: .form, explode: true), parameterDefaults: parameterDefaults)
        return builder.build()
    }
}
