---@meta

---@class structGroup : Object
---@field name string gets the current name
---@field box GroupBox Gets the groupbox object
---@field columnCount integer Gets the number of columns in the group
---@field columns structColumn[] Returns the specific structColumn object
structGroup = {}
---Adds a new columns to the specific group and returns it's structColumn objecy
---@return structColumn
function structGroup.addColumns() end
