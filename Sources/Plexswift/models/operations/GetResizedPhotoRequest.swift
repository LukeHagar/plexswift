// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetResizedPhotoRequest: APIValue {
        /// The width for the resized photo
        @DecimalSerialized
        public private(set) var blur: Double
        /// The height for the resized photo
        @DecimalSerialized
        public private(set) var height: Double
        /// images are always scaled proportionally. A value of '1' in minSize will make the smaller native dimension the dimension resized against.
        public let minSize: Operations.MinSize
        /// The opacity for the resized photo
        public let opacity: Int
        /// allow images to be resized beyond native dimensions.
        public let upscale: Operations.Upscale
        /// path to image within Plex
        public let url: String
        /// The width for the resized photo
        @DecimalSerialized
        public private(set) var width: Double

        /// Creates an object with the specified parameters
        ///
        /// - Parameter blur: The width for the resized photo
        /// - Parameter height: The height for the resized photo
        /// - Parameter minSize: images are always scaled proportionally. A value of '1' in minSize will make the smaller native dimension the dimension resized against.
        /// - Parameter opacity: The opacity for the resized photo
        /// - Parameter upscale: allow images to be resized beyond native dimensions.
        /// - Parameter url: path to image within Plex
        /// - Parameter width: The width for the resized photo
        ///
        public init(blur: Double, height: Double, minSize: Operations.MinSize, opacity: Int, upscale: Operations.Upscale, url: String, width: Double) {
            self._blur = DecimalSerialized<Double>(wrappedValue: blur)
            self._height = DecimalSerialized<Double>(wrappedValue: height)
            self.minSize = minSize
            self.opacity = opacity
            self.upscale = upscale
            self.url = url
            self._width = DecimalSerialized<Double>(wrappedValue: width)
        }
    }
}
extension Operations.GetResizedPhotoRequest {
    var widthWrapper: DecimalSerialized<Double> {
        return _width
    }
    var heightWrapper: DecimalSerialized<Double> {
        return _height
    }
    var blurWrapper: DecimalSerialized<Double> {
        return _blur
    }
}
