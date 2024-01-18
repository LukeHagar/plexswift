// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct StartTaskRequest: APIValue {
        /// the name of the task to be started.
        public let taskName: Operations.TaskName

        /// Creates an object with the specified parameters
        ///
        /// - Parameter taskName: the name of the task to be started.
        ///
        public init(taskName: Operations.TaskName) {
            self.taskName = taskName
        }
    }
}
