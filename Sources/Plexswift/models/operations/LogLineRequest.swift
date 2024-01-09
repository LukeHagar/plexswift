// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct LogLineRequest: APIValue {
        /// An integer log level to write to the PMS log with.  
        /// 0: Error  
        /// 1: Warning  
        /// 2: Info 
        /// 3: Debug  
        /// 4: Verbose
        /// 
        public let level: Operations.Level
        /// The text of the message to write to the log.
        public let message: String
        /// a string indicating the source of the message.
        public let source: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter level: An integer log level to write to the PMS log with.  
        /// 0: Error  
        /// 1: Warning  
        /// 2: Info 
        /// 3: Debug  
        /// 4: Verbose
        /// 
        /// - Parameter message: The text of the message to write to the log.
        /// - Parameter source: a string indicating the source of the message.
        ///
        public init(level: Operations.Level, message: String, source: String) {
            self.level = level
            self.message = message
            self.source = source
        }
    }
}
