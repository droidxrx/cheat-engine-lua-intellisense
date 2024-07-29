---@meta

---@class ListColumns : Collection
---@field Columns ListColumn[]
---@field [integer]ListColumn

ListColumns = {}

---Returns a new ListColumn object
---@return ListColumn
function ListColumns.add() end

---Returns a ListColum object
---@param index integer
---@return ListColumn
function ListColumns.getColumn(index) end

---Sets a ListColum object (not recommended, use add instead)
---@param index integer
---@param listcolumns ListColumn
function ListColumns.setColumn(index, listcolumns) end
