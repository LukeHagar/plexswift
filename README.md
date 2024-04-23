# plexswift

<a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
<a href="https://opensource.org/licenses/MIT">
<img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
</a>
![Platform](https://img.shields.io/badge/Platform-iOS-lightgray)
![Swift Version](https://img.shields.io/badge/Swift-5.6-orange.svg)

An Open API Spec for interacting with Plex.tv and Plex Servers

## Requirements

The SDK supports iOS 13 and later.

<!-- Start SDK Installation [installation] -->
## SDK Installation

### Swift Package Manager

You can add `plexswift` to your project directly in Xcode `(File > Add Packages...)` or by adding it to your project's Package.swift file:

```bash
dependencies: [
    .package(url: "https://github.com/LukeHagar/plexswift.git", .upToNextMajor(from: "0.1.4"))
]
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```swift
import Foundation
import Plexswift

let client = Client(security: .accessToken("<YOUR_API_KEY_HERE>"))

let response = try await client.server.getServerCapabilities()

switch response.data {
case .twoHundredApplicationJsonObject(let twoHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredAndOneApplicationJsonObject(let fourHundredAndOneApplicationJsonObject):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations


<!-- End Available Resources and Operations [operations] -->

<!-- Start Authentication [security] -->
## Authentication

### Global Security Schemes

The SDK supports the following security scheme globally through the `Shared.Security` type:

| Name           | Type           | Scheme         |
| -------------- | -------------- | -------------- |
| `.accessToken` | apiKey         | API key        |

You can set the appropriate security parameters by passing a `Shared.Security` value for the `security` parameter when initializing the `Client` instance. For example:

```swift
import Foundation
import Plexswift

let client = Client(security: .accessToken("<YOUR_API_KEY_HERE>"))

let response = try await client.server.getServerCapabilities()

switch response.data {
case .twoHundredApplicationJsonObject(let twoHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredAndOneApplicationJsonObject(let fourHundredAndOneApplicationJsonObject):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End Authentication [security] -->

<!-- Start Global Parameters [global-parameters] -->
## Global Parameters

A parameter is configured globally. This parameter must be set on the SDK client instance itself during initialization. When configured as an option during SDK initialization, This global value will be used as the default on the operations that use it. When such operations are called, there is a place in each to override the global value, if needed.

For example, you can set `X-Plex-Client-Identifier` to `"Postman"` at SDK initialization and then you do not have to pass the same value on calls to operations like `getPin`. But if you want to do so you may, which will locally override the global setting. See the example code below for a demonstration.


### Available Globals

The following global parameter is available. The required parameter must be set when you initialize the SDK client.

| Name | Type | Required | Description |
| ---- | ---- |:--------:| ----------- |
| xPlexClientIdentifier | String | ✔️ | The unique identifier for the client application
This is used to track the client application and its usage
(UUID, serial number, or other number unique per device)
 |


### Example

```swift
import Foundation
import Plexswift

let client = Client()

let response = try await client.plex.getPin(
    request: Operations.GetPinRequest(
        strong: false, 
    )
)

switch response.data {
case .twoHundredApplicationJsonObject(let twoHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredApplicationJsonObject(let fourHundredApplicationJsonObject):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End Global Parameters [global-parameters] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
