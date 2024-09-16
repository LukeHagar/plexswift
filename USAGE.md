<!-- Start SDK Example Usage [usage] -->
```swift
import Foundation
import Plexswift

let client = Client(security: .accessToken("<YOUR_API_KEY_HERE>"))

let response = try await client.server.getServerCapabilities()

switch response.data {
case .object(let object):
    // Handle response
    break
case .badRequest(let badRequest):
    // Handle response
    break
case .unauthorized(let unauthorized):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End SDK Example Usage [usage] -->