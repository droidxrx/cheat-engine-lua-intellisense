---@meta

---Class for manipulating the Cheat Engine form's address list
---@class Addresslist : Panel
---@field LoadedTableVersion integer Returns the tableVersion of the last loaded table
---@field Count integer The number of records in the table
---@field SelCount integer The number of records that are selected
---@field SelectedRecord MemoryRecord The main selected record
---@field MemoryRecord MemoryRecord[] Array to access the individual memory records
---@field [integer]MemoryRecord Default accessor
---@field CheckboxActiveSelectedColor integer
---@field CheckboxActiveColor integer
---@field CheckboxSelectedColor integer
---@field CheckboxColor integer
---@field SelectedBackgroundColor integer
---@field SelectedSecondaryBackgroundColor integer
---@field ExpandSignColor integer
---@field IncreaseArrowColor integer
---@field DecreaseArrowColor integer
Addresslist = {}

---Returns the memoryrecord that the mouse points at. nil if nothing
---@return MemoryRecord|nil
function Addresslist.MouseHighlightedRecord() end

---called when the user initiates a description column change on a record. Return true if you handle it, false for normal behaviour
---@param addresslist Addresslist
---@param memrec MemoryRecord
---@return boolean
Addresslist.OnDescriptionChange = function(addresslist, memrec) end
---called when the user initiates an address column change on a record. Return true if you handle it, false for normal behaviour
---@param addresslist Addresslist
---@param memrec MemoryRecord
---@return boolean
Addresslist.OnAddressChange = function(addresslist, memrec) end
---called when the user initiates a type column change on a record. Return true if you handle it, false for normal behaviour
---@param addresslist Addresslist
---@param memrec MemoryRecord
---@return boolean
Addresslist.OnTypeChange = function(addresslist, memrec) end
---called when the user initiates a value column change on a record. Return true if you handle it, false for normal behaviour
---@param addresslist Addresslist
---@param memrec MemoryRecord
Addresslist.OnValueChange = function(addresslist, memrec) end
--- Called when the user initiates a memoryrecord AA script edit.  This function will be responsible for changing the memory record
---@param addresslist Addresslist
---@param memrec MemoryRecord
Addresslist.OnAutoAssemblerEdit = function(addresslist, memrec) end

---Returns the number of memory records in the address list
---@return integer
function Addresslist.getCount() end

---returns a `MemoryRecord` object based on it's index
---@param index integer
---@return MemoryRecord
function Addresslist.getMemoryRecord(index) end

---returns a `MemoryRecord` object based on it's description
---@param description string
---@return MemoryRecord
function Addresslist.getMemoryRecordByDescription(description) end

---returns a `MemoryRecord` object based on it's ID
---@param ID integer
---@return MemoryRecord
function Addresslist.getMemoryRecordByID(ID) end

---creates an generic cheat table entry and add it to the list
---@return MemoryRecord
function Addresslist.createMemoryRecord() end

---Returns a table containing all the selected records
---@return MemoryRecord[]
function Addresslist.getSelectedRecords() end

---Will show the GUI window to change the description of the selected entry
function Addresslist.doDescriptionChange() end

---Will show the GUI window to change the address of the selected entry
function Addresslist.doAddressChange() end

---Will show the GUI window to change the type of the selected entries
function Addresslist.doTypeChange() end

---Will show the GUI window to change the value of the selected entries
function Addresslist.doValueChange() end

---Gets the main selected memory record
---@return MemoryRecord
function Addresslist.getSelectedRecord() end

---Sets the currently selected memory record. This will unselect all other entries
---@param memrec MemoryRecord
function Addresslist.setSelectedRecord(memrec) end

---Disables all memory records without executing their [Disable] section
function Addresslist.disableAllWithoutExecute() end

---Rebuilds the description to record lookup table
function Addresslist.rebuildDescriptionCache() end

---Returns the cheat table `Addresslist` UserData object
---@return Addresslist
function getAddressList() end
