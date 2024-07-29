---@meta

---A "CEAddressString" is a string formatted for use by Cheat Engine's internal symbol handler to interpret an address \
---These addresses do not start with a 0x in front but do support basic math. Example: "00400500+12" \
---Pointers are written between [ and ]. Example: [[game.exe+1234]+12]+8 for a pointer that is written as: \
---```
---8
---12
---game.exe+1234
---```
---The address specifier can also be a global lua symbol, but then it can only be the lua symbol. You do that by starting the CEAddressString with a '$'-sign. Example: $MyGlobalsymbol \
---If an entry on the cheat table is nested under another entry, its address can begin with a "+", and will be interpreted as an offset to that parent entry. For example, if the parent entry is at the address "00400500+12", then the child entry with the address "+1" would resolve to "00400500+12+1".
---@class CEAddressString: string

---@class float: integer

---@class AlignmentOption: integer

---@class PixelFormat: integer

---These are declared globally and their type() is of number. \
---They act like an enum object for the Duplicates property.
---```
---0 : dupIgnore
---1 : dupAccept
---2 : dupError
---```
---@class DuplicatesType : integer

---@class AddressList : Addresslist

---@class MainForm : CEForm

---@class TRect
---@field Left integer
---@field Top integer
---@field Right integer
---@field Bottom integer

---@return float #Returns a floating point value specifying the version of cheat engine
function getCEVersion() end

---@return integer #Returns the full version data of the cheat engine version. A raw integer, and a table containing major, minor, release and build
function getCheatEngineFileVersion() end

---@return integer #Returns 0 if CE is running in Windows, 1 for Mac
function getOperatingSystem() end

---@return boolean #Returns true if CE is running in windows Dark Mode. Has no effect on mac
function darkMode() end

---Prevents basic memory scanners from opening the cheat engine process.
function activateProtection() end

---Prevents normal memory scanners from reading the Cheat Engine process (kernel mode).
---@param altitude? any Optional
---@param secondaryprocessid? integer Optional
function enableDRM(altitude, secondaryprocessid) end

---Changes the protection of a block of memory to writable and executable
---@param address integer
---@param size integer
function fullAccess(address, size) end

---Sets the given protection on the address range. Note, some systems do not support X and W to be true at the same time
---@param address integer
---@param size integer
---@param prot { R:boolean, W: boolean, X: boolean }
function setMemoryProtection(address, size, prot) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param fileName string The name of the file to be added to the cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
function loadTable(fileName, merge) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param memoryStream MemoryStream The memory stream to load as a cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
---@param ignoreLuaScriptDialog boolean
function loadTable(memoryStream, merge, ignoreLuaScriptDialog) end

---Saves the current table. If protect is provided and set to true and the filename has the .CETRAINER extension, it will protect it from reading normally
---@param fileName string
---@param protect? boolean
---@param dontDeactivateDesignerForms? boolean
function saveTable(fileName, protect, dontDeactivateDesignerForms) end

---Saves the current table to a stream object
---@param stream Stream
---@param dontDeactivateDesignerForms? boolean
function saveTable(stream, dontDeactivateDesignerForms) end

---If the current CE install has a valid cheta engine signature, this will sign the specific table with that signature (will pop up the password request)
---@param filename string
function signTable(filename) end

---Copies memory from the given address to the destination address \
---If no destinationAddress is given(or nil), CE will allocate a random address for you \
---Method can be: \
---&nbsp;&nbsp;&nbsp;&nbsp;nil/0: Copy from target process to target process \
---&nbsp;&nbsp;&nbsp;&nbsp;1: Copy from target process to CE Memory \
---&nbsp;&nbsp;&nbsp;&nbsp;2: Copy from CE Memory to target process \
---&nbsp;&nbsp;&nbsp;&nbsp;3: Copy from CE Memory to CE Memory
---@param sourceAddress integer
---@param size integer
---@param destinationAddress? integer SEMIOPTIONAL
---@param Method? integer
---@return integer|nil #Returns the address of the copy on success, nil on failure
function copyMemory(sourceAddress, size, destinationAddress, Method) end

---Compares the memory \
---Method can be: \
---&nbsp;&nbsp;&nbsp;&nbsp;0: Target to Target \
---&nbsp;&nbsp;&nbsp;&nbsp;1: Address1=Target Address2=CE \
---&nbsp;&nbsp;&nbsp;&nbsp;2: Address1=CE Address2=CE
---@param address1 integer
---@param address2 integer
---@param size integer
---@param method integer
---@return boolean #Returns true if the same or false and and index where the first disparity is
function compareMemory(address1, address2, size, method) end

---@class MemoryRegions
---@field Protect integer
---@field AllocationBase integer
---@field State integer
---@field RegionSize integer
---@field AllocationProtect integer
---@field BaseAddress integer
---@field Type integer

---Returns an indexed table containing the memorylayout
---@return MemoryRegions[]
function enumMemoryRegions() end

---Writes a specified block of memory to a file. Useful for extracting specific files from memory. Like a decoded .SWF, or a image, or whatever you might want to look up.
---@param Filename string The filename to save the memoryblock to
---@param Address CEAddressString | integer The address of the block to save
---@param Size integer The number of bytes to save.
function writeRegionToFile(Filename, Address, Size) end

---Reads a file from memory and writes the contents of that file to the specified address
---@param Filename string The filename to load into memory
---@param Address CEAddressString | integer The address to write the block of data to
function readRegionFromFile(Filename, Address) end

---This will create a new lua state that will be used. (Does not destroy the old one, so memory leak)
function resetLuaState() end

---Returns the given variable from the main lua state. Only basic types are supported.  (Handy for new lua state threads)
---@param value string
---@return any
function getGlobalVariable(value) end

---Sets the global variable names string in the main lua state.  Only basic types are supported
---@param value string
---@param something any
function setGlobalVariable(value, something) end

---Returns an integer reference that you can use with getRef. \
---Useful for objects that can only store integers and need to reference lua objects.  (Component.Tag...)
---@param ... any
---@return integer
function createRef(...) end

---Returns whatever the reference points out
---@param integer integer
---@return any
function getRef(integer) end

---Removes the reference
---@param integer integer
function destroyRef(integer) end

---Converts a given function into an encoded string that you can pass on to `decodeFunction`
---@param function_ function The function to encode
---@return string
function encodeFunction(function_) end

---Converts a given string converted by `encodeFunction` back into function.
---@param encodedString string The string to decode into a function
---@return function
function decodeFunction(encodedString) end

---See encodeFunction but uses a script instead of a function, and lets you specify which lua dll to use (Note: Still can't use 32-bit dll's in 64-bit and vice versa)
---@param string string
---@param pathtodll? string
function encodeFunctionEx(string, pathtodll) end

---Returns the path of the current translation files. Empty if there is no translation going on
---@return string
function getTranslationFolder() end

---Loads a .PO file used for translation
---@param path string
function loadPOFile(path) end

---Returns a translation of the string. Returns the same string if it can't be found
---@param value string
---@return string
function translate(value) end

---Returns a translation of the string id
---@param translationid string
---@param originalstring? string
---@return string
function translateID(translationid, originalstring) end

---Conversts a given string/bytearray into a utf8 converted from the given codepage number
---@param stringorbytetable string|integer[]
---@param originalcodepagenumber integer
---@return string
function convertToUTF8(stringorbytetable, originalcodepagenumber) end

---Converts a string in Ansi encoding to UTF8
---@param value string
---@return string
function ansiToUTF8(value) end

---Converts a string in UTF8 encoding to Ansi
---@param value string
---@return string
function UTF8ToAnsi(value) end
