// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

/// Describes common parameters which can be used when making API requests.
///
/// > Note: These parameters may be overridden by individual API operations
public struct GlobalParameters {
    public let clientID: String?
    public let clientName: String?
    public let clientVersion: String?
    public let clientPlatform: String?
    public let deviceName: String?

    /// Creates an object with the given parameters
    ///
    /// - Parameter clientID: The unique identifier for the client application
    /// This is used to track the client application and its usage
    /// (UUID, serial number, or other number unique per device)
    /// 
    ///
    public init(
        clientID: String? = nil,
        clientName: String? = nil,
        clientVersion: String? = nil,
        clientPlatform: String? = nil,
        deviceName: String? = nil
    ) {
        self.clientID = clientID
        self.clientName = clientName
        self.clientVersion = clientVersion
        self.clientPlatform = clientPlatform
        self.deviceName = deviceName
    }
}

extension GlobalParameters: ParameterDefaults {
    public func defaultSerializedPathParameter(for key: String) throws -> String? {
        switch key {
        default: return nil
        }
    }

    public func defaultQueryParameter(for key: String) -> AnyValue? {
        switch key {
        case "ClientID": return clientID.map { AnyValue($0) }
        case "ClientName": return clientName.map { AnyValue($0) }
        case "ClientVersion": return clientVersion.map { AnyValue($0) }
        case "ClientPlatform": return clientPlatform.map { AnyValue($0) }
        case "DeviceName": return deviceName.map { AnyValue($0) }
        default: return nil
        }
    }
}
