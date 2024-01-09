# ``plexswift``

An Open API Spec for interacting with Plex.tv and Plex Servers

`plexswift` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:

### SDK Example Usage

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

### Getting started
- ``PlexswiftAPI`` defines the available API operations, including operations which are logically grouped by name (for example under ``PlexswiftAPI/server``).
- ``Client`` is the main object used when making requests to the API, and implements ``PlexswiftAPI`` to provide this functionality.  Each available API method is exposed as an `async` function, which you can call and `await` its response and handle any errors that are thrown.
- API methods that require input data take a *request object* describing these parameters, and each method returns a *response object* containing information about the response. You can read more about these in <doc:Client#Request-and-response-objects>.
- Requests to the API must be authenticated. You can provide authentication credentials by initializing ``Client`` with a ``Shared/Security`` value.
- If an error occurs when making a request to the API, a ``PlexswiftError`` error is thrown with more information about what went wrong.

## Topics

### Connecting to the API

- ``Client``
- ``Shared/Security``
- ``Response``
- ``ResponseWithHeaders``
- ``ResponseFields``
- ``ResponseHeaders``
- ``PlexswiftError``

### API operations

- ``plexswift/PlexswiftAPI``
- ``ServerAPI``
- ``MediaAPI``
- ``ActivitiesAPI``
- ``ButlerAPI``
- ``HubsAPI``
- ``SearchAPI``
- ``LibraryAPI``
- ``LogAPI``
- ``PlaylistsAPI``
- ``SecurityAPI``
- ``SessionsAPI``
- ``UpdaterAPI``
- ``VideoAPI``

### Server configuration

### Shared models

### Request objects

### Response objects
- ``Operations/AddPlaylistContentsResponse``
- ``Operations/ApplyUpdatesResponse``
- ``Operations/CancelServerActivitiesResponse``
- ``Operations/CheckForUpdatesResponse``
- ``Operations/ClearPlaylistContentsResponse``
- ``Operations/CreatePlaylistResponse``
- ``Operations/DeleteLibraryResponse``
- ``Operations/DeletePlaylistResponse``
- ``Operations/EnablePaperTrailResponse``
- ``Operations/GetAvailableClientsResponse``
- ``Operations/GetButlerTasksResponse``
- ``Operations/GetCommonLibraryItemsResponse``
- ``Operations/GetDevicesResponse``
- ``Operations/GetFileHashResponse``
- ``Operations/GetGlobalHubsResponse``
- ``Operations/GetLatestLibraryItemsResponse``
- ``Operations/GetLibrariesResponse``
- ``Operations/GetLibraryResponse``
- ``Operations/GetLibraryHubsResponse``
- ``Operations/GetLibraryItemsResponse``
- ``Operations/GetMetadataResponse``
- ``Operations/GetMetadataChildrenResponse``
- ``Operations/GetMyPlexAccountResponse``
- ``Operations/GetOnDeckResponse``
- ``Operations/GetPlaylistResponse``
- ``Operations/GetPlaylistContentsResponse``
- ``Operations/GetPlaylistsResponse``
- ``Operations/GetRecentlyAddedResponse``
- ``Operations/GetResizedPhotoResponse``
- ``Operations/GetSearchResultsResponse``
- ``Operations/GetServerActivitiesResponse``
- ``Operations/GetServerCapabilitiesResponse``
- ``Operations/GetServerIdentityResponse``
- ``Operations/GetServerListResponse``
- ``Operations/GetServerPreferencesResponse``
- ``Operations/GetSessionHistoryResponse``
- ``Operations/GetSessionsResponse``
- ``Operations/GetSourceConnectionInformationResponse``
- ``Operations/GetTimelineResponse``
- ``Operations/GetTranscodeSessionsResponse``
- ``Operations/GetTransientTokenResponse``
- ``Operations/GetUpdateStatusResponse``
- ``Operations/LogLineResponse``
- ``Operations/LogMultiLineResponse``
- ``Operations/MarkPlayedResponse``
- ``Operations/MarkUnplayedResponse``
- ``Operations/PerformSearchResponse``
- ``Operations/PerformVoiceSearchResponse``
- ``Operations/RefreshLibraryResponse``
- ``Operations/StartAllTasksResponse``
- ``Operations/StartTaskResponse``
- ``Operations/StartUniversalTranscodeResponse``
- ``Operations/StopAllTasksResponse``
- ``Operations/StopTaskResponse``
- ``Operations/StopTranscodeSessionResponse``
- ``Operations/UpdatePlaylistResponse``
- ``Operations/UpdatePlayProgressResponse``
- ``Operations/UploadPlaylistResponse``

### Other models
- ``Operations/Activity``
- ``Operations/AddPlaylistContentsErrors``
- ``Operations/AddPlaylistContentsRequest``
- ``Operations/AddPlaylistContentsResponseBody``
- ``Operations/ApplyUpdatesErrors``
- ``Operations/ApplyUpdatesRequest``
- ``Operations/ApplyUpdatesResponseBody``
- ``Operations/ButlerTask``
- ``Operations/ButlerTasks``
- ``Operations/CancelServerActivitiesErrors``
- ``Operations/CancelServerActivitiesRequest``
- ``Operations/CancelServerActivitiesResponseBody``
- ``Operations/CheckForUpdatesErrors``
- ``Operations/CheckForUpdatesRequest``
- ``Operations/CheckForUpdatesResponseBody``
- ``Operations/ClearPlaylistContentsErrors``
- ``Operations/ClearPlaylistContentsRequest``
- ``Operations/ClearPlaylistContentsResponseBody``
- ``Operations/Context``
- ``Operations/Country``
- ``Operations/CreatePlaylistErrors``
- ``Operations/CreatePlaylistRequest``
- ``Operations/CreatePlaylistResponseBody``
- ``Operations/DeleteLibraryErrors``
- ``Operations/DeleteLibraryRequest``
- ``Operations/DeleteLibraryResponseBody``
- ``Operations/DeletePlaylistErrors``
- ``Operations/DeletePlaylistRequest``
- ``Operations/DeletePlaylistResponseBody``
- ``Operations/Device``
- ``Operations/Director``
- ``Operations/Directory``
- ``Operations/Download``
- ``Operations/EnablePaperTrailErrors``
- ``Operations/EnablePaperTrailResponseBody``
- ``Operations/Errors``
- ``Operations/Force``
- ``Operations/Genre``
- ``Operations/GetAvailableClientsErrors``
- ``Operations/GetAvailableClientsMediaContainer``
- ``Operations/GetAvailableClientsResponseBody``
- ``Operations/GetButlerTasksButlerResponseBody``
- ``Operations/GetButlerTasksErrors``
- ``Operations/GetButlerTasksResponseBody``
- ``Operations/GetCommonLibraryItemsErrors``
- ``Operations/GetCommonLibraryItemsRequest``
- ``Operations/GetCommonLibraryItemsResponseBody``
- ``Operations/GetDevicesErrors``
- ``Operations/GetDevicesMediaContainer``
- ``Operations/GetDevicesResponseBody``
- ``Operations/GetDevicesServerResponseBody``
- ``Operations/GetFileHashErrors``
- ``Operations/GetFileHashRequest``
- ``Operations/GetFileHashResponseBody``
- ``Operations/GetGlobalHubsErrors``
- ``Operations/GetGlobalHubsRequest``
- ``Operations/GetGlobalHubsResponseBody``
- ``Operations/GetLatestLibraryItemsErrors``
- ``Operations/GetLatestLibraryItemsRequest``
- ``Operations/GetLatestLibraryItemsResponseBody``
- ``Operations/GetLibrariesErrors``
- ``Operations/GetLibrariesResponseBody``
- ``Operations/GetLibraryErrors``
- ``Operations/GetLibraryRequest``
- ``Operations/GetLibraryResponseBody``
- ``Operations/GetLibraryHubsErrors``
- ``Operations/GetLibraryHubsRequest``
- ``Operations/GetLibraryHubsResponseBody``
- ``Operations/GetLibraryItemsErrors``
- ``Operations/GetLibraryItemsRequest``
- ``Operations/GetLibraryItemsResponseBody``
- ``Operations/GetMetadataErrors``
- ``Operations/GetMetadataRequest``
- ``Operations/GetMetadataResponseBody``
- ``Operations/GetMetadataChildrenErrors``
- ``Operations/GetMetadataChildrenRequest``
- ``Operations/GetMetadataChildrenResponseBody``
- ``Operations/GetMyPlexAccountErrors``
- ``Operations/GetMyPlexAccountResponseBody``
- ``Operations/GetMyPlexAccountServerResponseBody``
- ``Operations/GetOnDeckErrors``
- ``Operations/GetOnDeckLibraryResponseBody``
- ``Operations/GetOnDeckMedia``
- ``Operations/GetOnDeckMediaContainer``
- ``Operations/GetOnDeckMetadata``
- ``Operations/GetOnDeckPart``
- ``Operations/GetOnDeckResponseBody``
- ``Operations/GetPlaylistErrors``
- ``Operations/GetPlaylistRequest``
- ``Operations/GetPlaylistResponseBody``
- ``Operations/GetPlaylistContentsErrors``
- ``Operations/GetPlaylistContentsRequest``
- ``Operations/GetPlaylistContentsResponseBody``
- ``Operations/GetPlaylistsErrors``
- ``Operations/GetPlaylistsRequest``
- ``Operations/GetPlaylistsResponseBody``
- ``Operations/GetRecentlyAddedErrors``
- ``Operations/GetRecentlyAddedLibraryResponseBody``
- ``Operations/GetRecentlyAddedMediaContainer``
- ``Operations/GetRecentlyAddedResponseBody``
- ``Operations/GetResizedPhotoErrors``
- ``Operations/GetResizedPhotoRequest``
- ``Operations/GetResizedPhotoResponseBody``
- ``Operations/GetSearchResultsCountry``
- ``Operations/GetSearchResultsDirector``
- ``Operations/GetSearchResultsErrors``
- ``Operations/GetSearchResultsGenre``
- ``Operations/GetSearchResultsMedia``
- ``Operations/GetSearchResultsMediaContainer``
- ``Operations/GetSearchResultsMetadata``
- ``Operations/GetSearchResultsPart``
- ``Operations/GetSearchResultsRequest``
- ``Operations/GetSearchResultsResponseBody``
- ``Operations/GetSearchResultsRole``
- ``Operations/GetSearchResultsSearchResponseBody``
- ``Operations/GetSearchResultsWriter``
- ``Operations/GetServerActivitiesActivitiesResponseBody``
- ``Operations/GetServerActivitiesErrors``
- ``Operations/GetServerActivitiesMediaContainer``
- ``Operations/GetServerActivitiesResponseBody``
- ``Operations/GetServerCapabilitiesResponseBody``
- ``Operations/GetServerCapabilitiesServerResponseBody``
- ``Operations/GetServerIdentityErrors``
- ``Operations/GetServerIdentityMediaContainer``
- ``Operations/GetServerIdentityResponseBody``
- ``Operations/GetServerIdentityServerResponseBody``
- ``Operations/GetServerListErrors``
- ``Operations/GetServerListMediaContainer``
- ``Operations/GetServerListResponseBody``
- ``Operations/GetServerListServer``
- ``Operations/GetServerListServerResponseBody``
- ``Operations/GetServerPreferencesErrors``
- ``Operations/GetServerPreferencesResponseBody``
- ``Operations/GetSessionHistoryErrors``
- ``Operations/GetSessionHistoryResponseBody``
- ``Operations/GetSessionsErrors``
- ``Operations/GetSessionsResponseBody``
- ``Operations/GetSourceConnectionInformationErrors``
- ``Operations/GetSourceConnectionInformationRequest``
- ``Operations/GetSourceConnectionInformationResponseBody``
- ``Operations/GetTimelineErrors``
- ``Operations/GetTimelineRequest``
- ``Operations/GetTimelineResponseBody``
- ``Operations/GetTranscodeSessionsErrors``
- ``Operations/GetTranscodeSessionsMediaContainer``
- ``Operations/GetTranscodeSessionsResponseBody``
- ``Operations/GetTranscodeSessionsSessionsResponseBody``
- ``Operations/GetTransientTokenErrors``
- ``Operations/GetTransientTokenRequest``
- ``Operations/GetTransientTokenResponseBody``
- ``Operations/GetUpdateStatusErrors``
- ``Operations/GetUpdateStatusResponseBody``
- ``Operations/Guids``
- ``Operations/IncludeDetails``
- ``Operations/Level``
- ``Operations/LogLineErrors``
- ``Operations/LogLineRequest``
- ``Operations/LogLineResponseBody``
- ``Operations/LogMultiLineErrors``
- ``Operations/LogMultiLineResponseBody``
- ``Operations/MarkPlayedErrors``
- ``Operations/MarkPlayedRequest``
- ``Operations/MarkPlayedResponseBody``
- ``Operations/MarkUnplayedErrors``
- ``Operations/MarkUnplayedRequest``
- ``Operations/MarkUnplayedResponseBody``
- ``Operations/Media``
- ``Operations/MediaContainer``
- ``Operations/Metadata``
- ``Operations/MinSize``
- ``Operations/MyPlex``
- ``Operations/OnlyTransient``
- ``Operations/Part``
- ``Operations/PathParamTaskName``
- ``Operations/PerformSearchErrors``
- ``Operations/PerformSearchRequest``
- ``Operations/PerformSearchResponseBody``
- ``Operations/PerformVoiceSearchErrors``
- ``Operations/PerformVoiceSearchRequest``
- ``Operations/PerformVoiceSearchResponseBody``
- ``Operations/PlaylistType``
- ``Operations/Provider``
- ``Operations/QueryParamOnlyTransient``
- ``Operations/QueryParamSmart``
- ``Operations/QueryParamType``
- ``Operations/RefreshLibraryErrors``
- ``Operations/RefreshLibraryRequest``
- ``Operations/RefreshLibraryResponseBody``
- ``Operations/ResponseBody``
- ``Operations/Role``
- ``Operations/Scope``
- ``Operations/Server``
- ``Operations/Skip``
- ``Operations/Smart``
- ``Operations/StartAllTasksErrors``
- ``Operations/StartAllTasksResponseBody``
- ``Operations/StartTaskErrors``
- ``Operations/StartTaskRequest``
- ``Operations/StartTaskResponseBody``
- ``Operations/StartUniversalTranscodeErrors``
- ``Operations/StartUniversalTranscodeRequest``
- ``Operations/StartUniversalTranscodeResponseBody``
- ``Operations/State``
- ``Operations/StopAllTasksErrors``
- ``Operations/StopAllTasksResponseBody``
- ``Operations/StopTaskErrors``
- ``Operations/StopTaskRequest``
- ``Operations/StopTaskResponseBody``
- ``Operations/StopTranscodeSessionErrors``
- ``Operations/StopTranscodeSessionRequest``
- ``Operations/StopTranscodeSessionResponseBody``
- ``Operations/Stream``
- ``Operations/TaskName``
- ``Operations/Tonight``
- ``Operations/TranscodeSession``
- ``Operations/TypeModel``
- ``Operations/UpdatePlaylistErrors``
- ``Operations/UpdatePlaylistRequest``
- ``Operations/UpdatePlaylistResponseBody``
- ``Operations/UpdatePlayProgressErrors``
- ``Operations/UpdatePlayProgressRequest``
- ``Operations/UpdatePlayProgressResponseBody``
- ``Operations/UploadPlaylistErrors``
- ``Operations/UploadPlaylistRequest``
- ``Operations/UploadPlaylistResponseBody``
- ``Operations/Upscale``
- ``Operations/Writer``

### Type groupings
- ``Operations``
- ``Shared``

### Data types

- ``AnyValue``
- ``APIValue``

### Internal data types

- ``DateConvertible``
- ``DateOnly``
- ``DateTime``
- ``DecimalSerialized``
- ``DoubleConvertible``
