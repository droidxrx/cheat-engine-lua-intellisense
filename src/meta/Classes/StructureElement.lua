---@meta

---@class StructureElement : Object
---@field Owner structure The structure this element belongs to. Readonly
---@field Offset integer The offset of this element
---@field Name string The name of this element
---@field Vartype integer The variable type of this element
---@field DisplayMethod string The displaymethod of the entry : 'dtUnsignedInteger', 'dtSignedInteger' or 'dtHexadecimal'
---@field ChildStruct structure If not nil this element is a pointer to the structure defined here
---@field ChildStructStart integer The number of bytes inside the provided childstruct. (E.g: It might point to offset 10 of a certain structure)
---@field Bytesize integer The number of bytes of this element. Readonly for basic types, writable for types that require a defined length like strings and array of bytes
StructureElement = {}

---Returns the structure this element belongs to
---@return structure
function StructureElement.getOwnerStructure() end

---Returns the offset of this element
---@return integer
function StructureElement.getOffset() end

---Sets the offset of this element
---@param offset integer
function StructureElement.setOffset(offset) end

---Returns the name of this element
---@return string
function StructureElement.getName() end

---Sets the name of this element (tip: Leave blank if you only want to set the name of the variable)
---@param name? string
function StructureElement.setName(name) end

---Returns the variable type of this element (check Variable types in defines.lua)
---@return integer
function StructureElement.getVartype() end

---@param vartype integer
function StructureElement.setVartype(vartype) end

---Gets the memory from the specified address and interprets it according to the element type
---@param address integer
---@return any
function StructureElement.getValue(address) end

---Sets the memory at the specified address to the interpreted value according to the element type
---@param address integer
---@param value any
function StructureElement.setValue(address, value) end

---same as getValue but uses the offset to calculate the final address
---@param baseaddress integer
---@return any
function StructureElement.getValueFromBase(baseaddress) end

---same as setValue but uses the offset to calculate the final address
---@param baseaddress integer
---@param value any
function StructureElement.setValueFromBase(baseaddress, value) end

---@return structure
function StructureElement.getChildStruct() end

---@param structure structure
function StructureElement.setChildStruct(structure) end

---@return integer
function StructureElement.getChildStructStart() end

---@param offset integer
function StructureElement.setChildStructStart(offset) end

---Gets the bytesize of the element. Usually returns the size of the type, except for string and aob
---@return integer
function StructureElement.getBytesize() end

---sets the bytesize for types that are affected (string, aob)
---@param size integer
function StructureElement.setBytesize(size) end
