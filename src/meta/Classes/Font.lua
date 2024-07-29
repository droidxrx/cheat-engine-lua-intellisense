---@meta

---@class Font : CustomFont
---@field Name string
---@field Size integer
---@field Height integer
---@field Orientation integer
---@field Pitch string 'fpDefault', 'fpVariable', 'fpFixed'
---@field Color integer
---@field CharSet integer
---@field Quality string 'fqDefault', 'fqDraft', 'fqProof', 'fqNonAntialiased', 'fqAntialiased', 'fqCleartype', 'fqCleartypeNatural'
---@field Style string set ['fsBold', 'fsItalic', 'fsStrikeOut', 'fsUnderline']
Font = {}

---Gets the fontname of the font
---@return string
function Font.getName() end

---Sets the fontname of the font
---@param name string
function Font.setName(name) end

---Gets the size of the font
---@return integer
function Font.getSize() end

---Sets the size of the font
---@param size integer
function Font.setSize(size) end

---Gets the color of the font
---@return integer
function Font.getColor() end

---Sets the color of the font
---@param color integer
function Font.setColor(color) end

---Copies the contents of the font given as parameter to this font
---@param font Font
function Font.assign(font) end

---Returns a font object (default initialized based on the main ce window)
---@return Font
function createFont() end
