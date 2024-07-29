---@meta

---Base class for some higher level classes. Often used for columns
---@class CollectionItem : Object
---@field ID integer
---@field Index integer - The index in the array this item belong to
---@field DisplayName string
CollectionItem = {}

---@return integer
function CollectionItem.getID() end

---@return integer
function CollectionItem.getIndex() end

---@param index integer
function CollectionItem.setIndex(index) end

---@return string
function CollectionItem.getDisplayName() end

---@param name string
function CollectionItem.setDisplayName(name) end
