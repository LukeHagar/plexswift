// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct User {
        public let allowCameraUpload: Operations.AllowCameraUpload
        public let allowChannels: Operations.AllowChannels
        public let allowSubtitleAdmin: Operations.AllowSubtitleAdmin
        public let allowSync: Operations.AllowSync
        public let allowTuners: Operations.AllowTuners
        /// User's email address.
        public let email: String
        public let home: Operations.Home
        /// User's unique ID.
        public let id: Int
        public let protected: Operations.Protected
        public let restricted: Operations.Restricted
        /// List of servers owned by the user.
        public let server: [Operations.GetUsersServer]
        /// URL to the user's avatar image.
        public let thumb: String
        /// User's display name.
        public let title: String
        /// User's username.
        public let username: String
        /// Filters applied for all content.
        public let filterAll: String?
        /// Filters applied for movies.
        public let filterMovies: String?
        /// Filters applied for music.
        public let filterMusic: String?
        /// Filters applied for photos.
        public let filterPhotos: String?
        /// Filters applied for television.
        public let filterTelevision: String?
        /// ID of the user's recommendation playlist.
        public let recommendationsPlaylistId: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter email: User's email address.
        /// - Parameter id: User's unique ID.
        /// - Parameter server: List of servers owned by the user.
        /// - Parameter thumb: URL to the user's avatar image.
        /// - Parameter title: User's display name.
        /// - Parameter username: User's username.
        /// - Parameter filterAll: Filters applied for all content.
        /// - Parameter filterMovies: Filters applied for movies.
        /// - Parameter filterMusic: Filters applied for music.
        /// - Parameter filterPhotos: Filters applied for photos.
        /// - Parameter filterTelevision: Filters applied for television.
        /// - Parameter recommendationsPlaylistId: ID of the user's recommendation playlist.
        ///
        public init(allowCameraUpload: Operations.AllowCameraUpload, allowChannels: Operations.AllowChannels, allowSubtitleAdmin: Operations.AllowSubtitleAdmin, allowSync: Operations.AllowSync, allowTuners: Operations.AllowTuners, email: String, home: Operations.Home, id: Int, protected: Operations.Protected, restricted: Operations.Restricted, server: [Operations.GetUsersServer], thumb: String, title: String, username: String, filterAll: String? = nil, filterMovies: String? = nil, filterMusic: String? = nil, filterPhotos: String? = nil, filterTelevision: String? = nil, recommendationsPlaylistId: String? = nil) {
            self.allowCameraUpload = allowCameraUpload
            self.allowChannels = allowChannels
            self.allowSubtitleAdmin = allowSubtitleAdmin
            self.allowSync = allowSync
            self.allowTuners = allowTuners
            self.email = email
            self.home = home
            self.id = id
            self.protected = protected
            self.restricted = restricted
            self.server = server
            self.thumb = thumb
            self.title = title
            self.username = username
            self.filterAll = filterAll
            self.filterMovies = filterMovies
            self.filterMusic = filterMusic
            self.filterPhotos = filterPhotos
            self.filterTelevision = filterTelevision
            self.recommendationsPlaylistId = recommendationsPlaylistId
        }
    }}
