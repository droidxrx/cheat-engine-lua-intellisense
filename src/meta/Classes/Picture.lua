---@meta

---@class Picture : Object
---@field Graphic Graphic
---@field PNG PortableNetworkGraphic
---@field Bitmap Bitmap
---@field Jpeg JpegImage
---@field Icon Icon
Picture = {}

---@param filename string
function Picture.loadFromFile(filename) end

---@param filename string
function Picture.saveToFile(filename) end

---Loads a picture from a stream. Note that the stream position must be set to the start of the picture
---@param stream Stream
---@param originalextension? any
function Picture.loadFromStream(stream, originalextension) end

---@param sourcepicture Picture
function Picture.assign(sourcepicture) end

---Returns a empty picture object
function createPicture() end
