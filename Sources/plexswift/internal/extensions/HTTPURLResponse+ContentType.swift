// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation
#if os(Linux)
import FoundationNetworking
#endif

extension HTTPURLResponse {
  var contentType: String {
    return value(forHTTPHeaderField: "Content-Type") ?? "application/octet-stream"
  }
}
