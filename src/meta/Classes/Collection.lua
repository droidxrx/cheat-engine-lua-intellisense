---@meta

---@class Collection : Object
---@field Count integer
---@field Items CollectionItem[]
---@field [integer]CollectionItem
Collection = {}

---@param collection Collection
function Collection.clear(collection) end

---@param collection Collection
---@return integer
function Collection.getCount(collection) end

---@param collection Collection
---@param index integer
function Collection.delete(collection, index) end
