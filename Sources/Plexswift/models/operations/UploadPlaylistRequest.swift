// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct UploadPlaylistRequest: APIValue {
        /// Force overwriting of duplicate playlists.  
        /// By default, a playlist file uploaded with the same path will overwrite the existing playlist. 
        /// The `force` argument is used to disable overwriting.  
        /// If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.
        /// 
        public let force: Operations.QueryParamForce
        /// absolute path to a directory on the server where m3u files are stored, or the absolute path to a playlist file on the server. 
        /// If the `path` argument is a directory, that path will be scanned for playlist files to be processed. 
        /// Each file in that directory creates a separate playlist, with a name based on the filename of the file that created it. 
        /// The GUID of each playlist is based on the filename. 
        /// If the `path` argument is a file, that file will be used to create a new playlist, with the name based on the filename of the file that created it. 
        /// The GUID of each playlist is based on the filename.
        /// 
        public let path: String
        /// Possibly the section ID to upload the playlist to, we are not certain.
        public let sectionID: Int

        /// Creates an object with the specified parameters
        ///
        /// - Parameter force: Force overwriting of duplicate playlists.  
        /// By default, a playlist file uploaded with the same path will overwrite the existing playlist. 
        /// The `force` argument is used to disable overwriting.  
        /// If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.
        /// 
        /// - Parameter path: absolute path to a directory on the server where m3u files are stored, or the absolute path to a playlist file on the server. 
        /// If the `path` argument is a directory, that path will be scanned for playlist files to be processed. 
        /// Each file in that directory creates a separate playlist, with a name based on the filename of the file that created it. 
        /// The GUID of each playlist is based on the filename. 
        /// If the `path` argument is a file, that file will be used to create a new playlist, with the name based on the filename of the file that created it. 
        /// The GUID of each playlist is based on the filename.
        /// 
        /// - Parameter sectionID: Possibly the section ID to upload the playlist to, we are not certain.
        ///
        public init(force: Operations.QueryParamForce, path: String, sectionID: Int) {
            self.force = force
            self.path = path
            self.sectionID = sectionID
        }
    }}
