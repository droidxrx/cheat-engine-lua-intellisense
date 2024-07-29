---@meta

---List containing images.  Used by several components for images
---@class ImageList : Object
---@field Count integer Number of images in the list
---@field DrawingStyle string 'dsFocus', 'dsSelected', 'dsNormal', 'dsTransparent'
---@field Height integer
---@field Width integer
---@field Masked boolean
---@field Scaled boolean
---@field OnChange function function(sender)
ImageList = {}

---Adds a new bitmap the list and returns the index of the newly added entry
---@param bitmap Bitmap
---@param bitmapmask? integer
---@return integer
function ImageList.add(bitmap, bitmapmask) end

---Draws the image at the index to the specific x,y coordinates on the canvas
---@param canvas Canvas
---@param x integer
---@param y integer
---@param index integer
function ImageList.draw(canvas, x, y, index) end

---Draw the specified image to the provided bitmap. \
---Effect can be:  0=gdeNormal, 1=gdeDisabled, 2=gdeHighlighted, 3=gdeShadowed, 4=gde1Bit
---@param index integer
---@param bitmap integer
---@param effect integer
function ImageList.getBitmap(index, bitmap, effect) end

---creates an imagelist object
---@param owner? any Optional
function createImageList(owner) end
