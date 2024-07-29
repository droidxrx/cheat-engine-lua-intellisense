---@meta

---@class StringList : Strings
---@field Sorted boolean Determines if the list should be sorted
---@field Duplicates DuplicatesType Determines how duplicates should be handled when the list is sorted
---@field CaseSensitive boolean Determines if the list is case sensitive or not.
StringList = {}
---returns the duplicates property
---@return DuplicatesType
function StringList.getDuplicates() end

---Sets the duplicates property (dupIgnore, dupAccept, dupError)
---@param Duplicates DuplicatesType
function StringList.setDuplicates(Duplicates) end

---returns true if the list has the sorted property
---@return boolean
function StringList.getSorted() end

---Sets the sorted property
---@param boolean boolean
function StringList.setSorted(boolean) end

---Returns true if the case sensitive property is set
---@return boolean
function StringList.getCaseSensitive() end

---Sets the case sensitive property
---@param boolean boolean
function StringList.setCaseSensitive(boolean) end

---Creates a stringlist class object (for whatever reason, lua strings are probably easier to use)
---@return StringList
function createStringlist() end
