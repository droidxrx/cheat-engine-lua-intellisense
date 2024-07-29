---@meta

---@class structure : Object
---@field Name string The name of the structure
---@field Size integer The number of bytes between the last element and the start. ReadOnly
---@field Count integer Number of elements in the structure. ReadOnly
---@field Element StructureElement[] Returns the structure element at the given index. Readonly
---@field [integer]StructureElement
structure = {}

---Returns the name
---@return string
function structure.getName() end

---Sets the name
---@param name string
function structure.setName(name) end

---Returns a structureElement object (Changing offsets can change the index)
---@param index integer
---@return StructureElement
function structure.getElement(index) end

---Returns a structureElement object where the specified offset is at least the requested offset
---@param offset integer
---@return StructureElement
function structure.getElementByOffset(offset) end

---Adds a new blank structureElement and returns it
---@return StructureElement
function structure.addElement() end

---@param baseaddresstoguessfrom integer
---@param offset integer
---@param size integer
function structure.autoGuess(baseaddresstoguessfrom, offset, size) end

---Fills the structure with the layout gathered from querying .NET.  If changeName is true, the structure will take the name of the .NET class.  (6.4+)
---@param address integer
---@param changeName boolean
function structure.fillFromDotNetAddress(address, changeName) end

---Call this when you want to make multiple updates to a structure. It will speed up the update process
function structure.beginUpdate() end

---Call this when done
function structure.endUpdate() end

---Add this to the list of structures for the user to select from. (Global structures will get saved to the table)
function structure.addToGlobalStructureList() end

---Remove from the list of structures.
function structure.removeFromGlobalStructureList() end

---@return integer #Returns the number of Global structures. (Global structures are the visible structures)
function getStructureCount() end

---@param index integer
---@return structure #Returns the Structure object at the given index
function getStructure(index) end

---@param name string
---@return structure #Returns an empty structure object (Not yet added to the Global list. Call structure.addToGlobalStructureList manually)
function createStructure(name) end

---@param string string
---@return structure #If PDB files are loaded this will create a structure with that name if it can be found
function createStructureFromName(string) end
