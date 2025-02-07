// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.


import Foundation

extension Operations.AllowCameraUpload: Serializable {
    func serialize(with format: SerializableFormat) throws -> String {
        return try rawValue.serialize(with: format)
    }

    func serializeQueryParameters(with format: SerializableFormat) throws -> [QueryParameter] {
        return [QueryParameter(key: [], serialized: try serialize(with: format))]
    }
}
