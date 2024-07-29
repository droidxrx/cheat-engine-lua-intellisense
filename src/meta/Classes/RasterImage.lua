---@meta

---@class RasterImage : Graphic
---@field Canvas Canvas
---@field PixelFormat PixelFormat - the pixelformat for this image. Will clear the current image if it had one. Supported pixelformats: pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit (recommended)
---@field TransparentColor integer
RasterImage = {}

---Returns the Canvas object for this image
---@return Canvas
function RasterImage.getCanvas() end

---Returns the current pixelformat
---@return PixelFormat
function RasterImage.getPixelFormat() end

---Sets the pixelformat for this image. Will clear the current image if it had one. Supported pixelformats: pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit (recommended)
---@param pixelformat PixelFormat
function RasterImage.setPixelFormat(pixelformat) end

---Returns the color set to be transparent
---@return integer
function RasterImage.getTransparentColor() end

---Sets the color that will be rendered as transparent when drawn
---@param transparentColor integer
function RasterImage.setTransparentColor(transparentColor) end

---Saves the image to a stream object
---@param stream Stream
function RasterImage.saveToStream(stream) end

---Loads the image from a stream object
---@param stream Stream
function RasterImage.loadFromStream(stream) end