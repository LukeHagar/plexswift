// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct StatisticsResources {
        public let at: Int?
        @DecimalSerialized
        public private(set) var hostCpuUtilization: Double?
        @DecimalSerialized
        public private(set) var hostMemoryUtilization: Double?
        @DecimalSerialized
        public private(set) var processCpuUtilization: Double?
        @DecimalSerialized
        public private(set) var processMemoryUtilization: Double?
        public let timespan: Int?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(at: Int? = nil, hostCpuUtilization: Double? = nil, hostMemoryUtilization: Double? = nil, processCpuUtilization: Double? = nil, processMemoryUtilization: Double? = nil, timespan: Int? = nil) {
            self.at = at
            self._hostCpuUtilization = DecimalSerialized<Double?>(wrappedValue: hostCpuUtilization)
            self._hostMemoryUtilization = DecimalSerialized<Double?>(wrappedValue: hostMemoryUtilization)
            self._processCpuUtilization = DecimalSerialized<Double?>(wrappedValue: processCpuUtilization)
            self._processMemoryUtilization = DecimalSerialized<Double?>(wrappedValue: processMemoryUtilization)
            self.timespan = timespan
        }
    }
}

extension Operations.StatisticsResources: Codable {
    enum CodingKeys: String, CodingKey {
        case at
        case hostCpuUtilization
        case hostMemoryUtilization
        case processCpuUtilization
        case processMemoryUtilization
        case timespan
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.at = try container.decodeIfPresent(Int.self, forKey: .at)
        self._hostCpuUtilization = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .hostCpuUtilization) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._hostMemoryUtilization = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .hostMemoryUtilization) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._processCpuUtilization = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .processCpuUtilization) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._processMemoryUtilization = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .processMemoryUtilization) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.timespan = try container.decodeIfPresent(Int.self, forKey: .timespan)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.at, forKey: .at)
        if self.hostCpuUtilization != nil {
            try container.encode(self._hostCpuUtilization, forKey: .hostCpuUtilization)
        }
        if self.hostMemoryUtilization != nil {
            try container.encode(self._hostMemoryUtilization, forKey: .hostMemoryUtilization)
        }
        if self.processCpuUtilization != nil {
            try container.encode(self._processCpuUtilization, forKey: .processCpuUtilization)
        }
        if self.processMemoryUtilization != nil {
            try container.encode(self._processMemoryUtilization, forKey: .processMemoryUtilization)
        }
        try container.encodeIfPresent(self.timespan, forKey: .timespan)
    }
}

extension Operations.StatisticsResources {
    var hostCpuUtilizationWrapper: DecimalSerialized<Double?> {
        return _hostCpuUtilization
    }
    var processCpuUtilizationWrapper: DecimalSerialized<Double?> {
        return _processCpuUtilization
    }
    var hostMemoryUtilizationWrapper: DecimalSerialized<Double?> {
        return _hostMemoryUtilization
    }
    var processMemoryUtilizationWrapper: DecimalSerialized<Double?> {
        return _processMemoryUtilization
    }
}
