---@meta

---@class Image : GraphicControl
---@field Canvas Canvas The canvas object to access the picture of the image
---@field Transparent boolean Determines if some parts of the picture are see through (usually based on the bottomleft corner)
---@field Stretch boolean Determines if the picture gets stretched when rendered in the image component
---@field Picture Picture The picture to render
Image = {}

---@param filename string
function Image.loadImageFromFile(filename) end

---@return boolean
function Image.getStretch() end

---@param boolean boolean
function Image.setStretch(boolean) end

---@return boolean
function Image.getTransparent() end

---@param boolean boolean
function Image.setTransparent(boolean) end

---@return Canvas
function Image.getCanvas() end

---@param picture Picture
function Image.setPicture(picture) end

---Returns the Picture object of this image
---@return Picture
function Image.getPicture() end

---Creates an Image class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return Image
function createImage(owner) end
