---@meta

---Returns the byte at the given address
---@param Address CEAddressString | integer The address to read
---@param Byte integer The value to write to the process
function writeByte(Address, Byte) end

---Write the bytes to the given address
---@param Address CEAddressString | integer The address to write to
---@param Byte integer The first byte
---@param ... integer All the other bytes (Max around 20)
function writeBytes(Address, Byte, ...) end

---Write the bytes to the given address
---@param Address CEAddressString | integer The address to write to
---@param Table integer[] A table consisting of integers to be written to
function writeBytes(Address, Table) end

---Writes a WORD (2 bytes) at the given address, representing the value you have given as a signed integer.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Value integer The value to write to the process
---@return boolean # Returns true on success.
function writeBytes(Address, Value) end

---Writes a DWORD (4 bytes) at the given address, representing the value you have given as a signed integer.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Value integer The value to write to the process
---@return boolean # Returns true on success.
function writeInteger(Address, Value) end

---Writes a QWORD (8 bytes) at the given address, representing the value you have given as a signed integer.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Value integer The value to write to the process
---@return boolean # Returns true on success.
function writeQword(Address, Value) end

---Writes a DWORD (4 bytes) at the given address representing the value you have given as a single precision floating point.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Value float The value to write to the process
---@return boolean # Returns true on success.
function writeFloat(Address, Value) end

---Writes a QWORD (8 bytes) at the given address representing the value you have given as a double precision floating point value.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Value float The value to write to the process
---@return boolean # Returns true on success.
function writeDouble(Address, Value) end

---Writes the given text to the given address. This does not write a 0-terminator at the end. You need to use writeBytes yourself if you need one. Set WideChar to true if it is encoded using a widechar formatting.
---@param Address CEAddressString | integer The address of the target process to write to
---@param Text string The text to write to the process
---@param WideChar? boolean Set to true if it is encoded using a widechar formatting
---@return boolean # Returns true on success.
function writeString(Address, Text, WideChar) end

---Writes a specified block of memory to a file. Useful for extracting specific files from memory. Like a decoded .SWF, or a image, or whatever you might want to look up.
---@param Filename string The filename to save the memoryblock to
---@param Address CEAddressString | integer The address of the block to save
---@param Size integer The number of bytes to save.
function writeRegionToFile(Filename, Address, Size) end
