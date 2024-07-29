---@meta

---@class ListColumn : CollectionItem
---@field AutoSize boolean
---@field Caption string
---@field MaxWidth integer
---@field MinWidth integer
---@field Width integer
---@field Visible boolean
ListColumn = {}

---@return boolean
function ListColumn.getAutosize() end

---@param boolean boolean
function ListColumn.setAutosize(boolean) end

---@return string
function ListColumn.getCaption() end

---@param caption string
function ListColumn.setCaption(caption) end

---@return integer
function ListColumn.getMaxWidth() end

---@param width integer
function ListColumn.setMaxWidth(width) end

---@return integer
function ListColumn.getMinWidth() end

---@param width integer
function ListColumn.setMinWidth(width) end

---@return integer
function ListColumn.getWidth() end

---@param width integer
function ListColumn.setWidth(width) end
