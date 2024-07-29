---@meta

---@class StructureFrm : Object
---@field MainStruct structure The currently selected structure
---@field ColumnCount integer the number of columns (columns=address)
---@field Column structColumn[] Fetches a structColumn object from the structure form
---@field GroupCount integer The number of groups
---@field Group structGroup[] Fetches a structGroup object from the structure form
---@field OnStatusbarUpdate function function(function(notificationbar)) Called when the statusbar gets updated
StructureFrm = {}

---Forces a refresh
function StructureFrm.structChange() end

---Adds a new column in the currently focuses group and returns it's structColumn object
---@return structColumn
function StructureFrm.addColumn() end

---Adds a new group and returns the structGroup object
---@return structGroup
function StructureFrm.addGroup() end

---Returns the currently selected StructureElement , and as second result a table containing an indexed list continaing 'struct', and 'element' describing the path to the base
---@return StructureElement
function StructureFrm.getSelectedStructElement() end

---@param address integer
---@return StructureFrm
function createStructureForm(address) end

---returns a table of StructureFrm objects (can be useful for finding a structure window with the wanted structure)
---@return StructureFrm[]
function enumStructureForms() end
