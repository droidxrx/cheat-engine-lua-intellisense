---@meta

---The memory record objects are the entries you see in the address list
---@class MemoryRecord : Object
---@field ID integer Unique ID
---@field Index integer The index ID for this record. 0 is top. (ReadOnly)
---@field Description string The description of the memory record
---@field Address string Get/set the interpretable address string. Useful for simple address settings.
---@field AddressString string Get the address string shown in CE (ReadOnly)
---@field OffsetCount integer The number of offsets. Set to 0 for a normal address
---@field Offset integer[] Array to access each offset
---@field OffsetText string[] Array to access each offset using the interpretable text style
---@field CurrentAddress integer The address the memoryrecord points to
---@field VarType string The variable type of this record. See vtByte to vtCustom
---The variable type of this record. See vtByte to vtCustom \
---If the type is vtString then the following properties are available: \
---&nbsp;&nbsp;&nbsp;&nbsp;String.Size: Number of characters in the string \
---&nbsp;&nbsp;&nbsp;&nbsp;String.Unicode: boolean \
---&nbsp;&nbsp;&nbsp;&nbsp;String.Codepage: boolean \
---If the type is vtBinary then the following properties are available \
---&nbsp;&nbsp;&nbsp;&nbsp;Binary.Startbit: First bit to start reading from \
---&nbsp;&nbsp;&nbsp;&nbsp;Binary.Size : Number of bits \
---If the type is vtByteArray then the following properties are available \
---&nbsp;&nbsp;&nbsp;&nbsp;Aob.Size : Number of bytes
---@field Type integer
---@field CustomTypeName string If the type is vtCustom this will contain the name of the CustomType
---@field Script string If the type is vtAutoAssembler this will contain the auto assembler script
---@field Value string The value in stringform.
---@field NumericalValue number The value in numerical form.  nil if it can not be parsed to a number
---@field Selected boolean Set to true if selected (ReadOnly)
---@field Active boolean Set to true to activate/freeze, false to deactivate/unfreeze
---@field Color integer
---@field ShowAsHex boolean Self explanatory
---@field ShowAsSigned boolean Self explanatory
---@field AllowIncrease boolean Allow value increasing, unfreeze will reset it to false
---@field AllowDecrease boolean Allow value decreasing, unfreeze will reset it to false
---@field Collapsed boolean Set to true to collapse this record or false to expand it. Use expand/collapse methods for recursive operations.
---@field IsGroupHeader boolean Set to true if the record was created as a Group Header with no address or value info.
---@field IsAddressGroupHeader boolean Set to true if the record was created as a Group Header with address.
---@field IsReadable boolean Set to false if record contains an unreadable address. NOTE: This property will not be set until the value property is accessed at least once. (ReadOnly)
---@field Options string a string enclosed by square brackets filled with the options seperated by a comma. Valid options are: moHideChildren, moActivateChildrenAsWell, moDeactivateChildrenAsWell, moRecursiveSetValue, moAllowManualCollapseAndExpand, moManualExpandCollapse, moAlwaysHideChildren
---@field DropDownLinked boolean if dropdown list refers to list of another memory record eg. (memrec name)
---@field DropDownLinkedMemrec string Description of linked memrec or emptystring if not linked
---@field DropDownList StringList list of "value:description" lines, lists are still separate objects when linked, read-write
---@field DropDownReadOnly boolean true if 'Disallow manual user input' is set
---@field DropDownDescriptionOnly boolean self explanatory
---@field DisplayAsDropDownListItem boolean self explanatory
---@field DropDownCount integer equivalent to .DropDownList.Count
---@field DropDownValue string[] Array to access values in DropDownList (ReadOnly)
---@field DropDownDescription string[] Array to access Descriptions in DropDownList (ReadOnly)
---@field Count integer Number of children
---@field Child MemoryRecord[] Array to access the child records
---@field [integer]MemoryRecord Child[index]
---@field Parent MemoryRecord The parent of the memory record
---@field HotkeyCount integer Number of hotkeys attached to this memory record
---@field Hotkey MemoryRecordHotkey[] Array to index the hotkeys
---@field Async boolean Set to true if activating this entry will be asynchronious. (only for AA/Lua scripts)
---@field AsyncProcessing boolean True when async is true and it's being processed
---@field AsyncProcessingTime integer The time that it has been processing in milliseconds
---@field HasMouseOver boolean True if the mouse is currently over it
---@field DontSave boolean Don't save this memoryrecord and it's children
MemoryRecord = {}

---The function to call when the memoryrecord will change (or changed) Active to true. \
---If before is true, not returning true will cause the activation to stop.
---@param memoryrecord MemoryRecord
---@param before any
---@param currentstate any
---@return boolean
MemoryRecord.OnActivate = function(memoryrecord, before, currentstate) end

---The function to call when the memoryrecord will change (or changed) Active to false. \
---If before is true, not returning true will cause the deactivation to stop.
---@param memoryrecord MemoryRecord
---@param before any
---@param currentstate any
---@return boolean
MemoryRecord.OnDeactivate = function(memoryrecord, before, currentstate) end

---Called when the memoryrecord is destroyed.
MemoryRecord.OnDestroy = function() end

---This function gets called when rendering the value of a memory record.
---@param memoryrecord MemoryRecord
---@param valuestring string
---@return boolean,string #Return true and a new string to override the value shown
MemoryRecord.OnGetDisplayValue = function(memoryrecord, valuestring) end

---This function gets called whenever the value of a memory record has changed
---@param memoryrecord MemoryRecord
---@param oldvalue any
---@param newvalue any
MemoryRecord.OnValueChanged = function(memoryrecord, oldvalue, newvalue) end

---This function gets called whenever the value of a memory record has changed by the user
---@param memoryrecord MemoryRecord
---@param oldvalue any
---@param newvalue any
MemoryRecord.OnValueChangedByUser = function(memoryrecord, oldvalue, newvalue) end

---@return string
function MemoryRecord.getDescription() end

---@param value string
function MemoryRecord.setDescription(value) end

---Returns the interpretable addressstring of this record. If it is a pointer, it returns a second result as a table filled with the offsets
---@return string
function MemoryRecord.getAddress() end

---Sets the interpretable address string, and if offsets are provided make it a pointer
---@param value string
function MemoryRecord.setAddress(value) end

---Returns the number of offsets for this memoryrecord
---@return integer
function MemoryRecord.getOffsetCount() end

---Lets you set the number of offsets
---@param value integer
function MemoryRecord.setOffsetCount(value) end

---Gets the offset at the given index
---@return integer
function MemoryRecord.getOffset(index) end

---Sets the offset at the given index
---@param index integer
---@param value integer
function MemoryRecord.setOffset(index, value) end

---Returns the current address as an integer (the final result of the interpretable address and pointer offsets)
---@return integer
function MemoryRecord.getCurrentAddress() end

---Appends the current memory record to the given memory record
---@param memrec MemoryRecord
function MemoryRecord.appendToEntry(memrec) end

---Returns the hotkey from the hotkey array
---@param index integer
---@return MemoryRecordHotkey
function MemoryRecord.getHotkey(index) end

---Returns the hotkey with the given id
---@param integer integer
---@return MemoryRecordHotkey
function MemoryRecord.getHotkeyByID(integer) end

function MemoryRecord.reinterpret() end

---Returns a hotkey object
---@param keys integer[]
---@param action integer
---@param value? string
---@param description? string
---@return MemoryRecordHotkey
function MemoryRecord.createHotkey(keys, action, value, description) end

---Sets the entry to disabled without executing the disable section
function MemoryRecord.disableWithoutExecute() end

---Call when you wish to take a long time to edit a record. (e.g external editor) It prevents the record from getting deleted
function MemoryRecord.beginEdit() end

---to mark the end of your long edit sequence
function MemoryRecord.endEdit() end
