// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Client: PlexswiftAPI {
    // MARK: - Root operations 

    // MARK: - Scoped API operations

    public var server: ServerAPI {
        return _ServerAPI(client: self)
    }

    public var media: MediaAPI {
        return _MediaAPI(client: self)
    }

    public var video: VideoAPI {
        return _VideoAPI(client: self)
    }

    public var activities: ActivitiesAPI {
        return _ActivitiesAPI(client: self)
    }

    public var butler: ButlerAPI {
        return _ButlerAPI(client: self)
    }

    public var hubs: HubsAPI {
        return _HubsAPI(client: self)
    }

    public var search: SearchAPI {
        return _SearchAPI(client: self)
    }

    public var library: LibraryAPI {
        return _LibraryAPI(client: self)
    }

    public var log: LogAPI {
        return _LogAPI(client: self)
    }

    public var plex: PlexAPI {
        return _PlexAPI(client: self)
    }

    public var playlists: PlaylistsAPI {
        return _PlaylistsAPI(client: self)
    }

    public var authentication: AuthenticationAPI {
        return _AuthenticationAPI(client: self)
    }

    public var statistics: StatisticsAPI {
        return _StatisticsAPI(client: self)
    }

    public var sessions: SessionsAPI {
        return _SessionsAPI(client: self)
    }

    public var updater: UpdaterAPI {
        return _UpdaterAPI(client: self)
    }
}

// MARK: - Request Configuration

// MARK: - Response Handlers

