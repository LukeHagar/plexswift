// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetServerResourcesRequest: APIValue {
        /// Include Https entries in the results
        public let includeHttps: Operations.IncludeHttps?
        /// Include IPv6 entries in the results
        public let includeIPv6: Operations.IncludeIPv6?
        /// Include Relay addresses in the results 
        /// E.g: https://10-0-0-25.bbf8e10c7fa20447cacee74cd9914cde.plex.direct:32400
        /// 
        public let includeRelay: Operations.IncludeRelay?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter includeHttps: Include Https entries in the results
        /// - Parameter includeIPv6: Include IPv6 entries in the results
        /// - Parameter includeRelay: Include Relay addresses in the results 
        /// E.g: https://10-0-0-25.bbf8e10c7fa20447cacee74cd9914cde.plex.direct:32400
        /// 
        ///
        public init(includeHttps: Operations.IncludeHttps? = nil, includeIPv6: Operations.IncludeIPv6? = nil, includeRelay: Operations.IncludeRelay? = nil) {
            self.includeHttps = includeHttps
            self.includeIPv6 = includeIPv6
            self.includeRelay = includeRelay
        }
    }}