// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum EnablePaperTrailResponse {
        case empty
        case object(Operations.EnablePaperTrailResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func object() throws -> Operations.EnablePaperTrailResponseBody {
            guard case .object(let value) = self else {
                throw PlexswiftError.missingResponseData
            }
            return value
        }
    }
}
