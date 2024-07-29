---@meta

---Returns the byte at the given address
---@param Address CEAddressString | integer The address to read
---@return integer
function readByte(Address) end

---Returns the bytes at the given address
---@param Address CEAddressString | integer The address to read
---@param Bytecount	integer	The number of bytes to read
---@param ReturnAsTable	boolean	Returns a table object instead of multiple return values
---@return integer | integer[] # If @param ReturnAsTable true return array integer
function readBytes(Address, Bytecount, ReturnAsTable) end

---Reads a WORD (2 bytes) at the given address and interprets them as an integer
---@param Address CEAddressString | integer The address to read
---@return integer
function readSmallInteger(Address) end

---Reads a DWORD (4 bytes) at the given address and interprets them as an integer
---@param Address CEAddressString | integer The address to read
---@return integer
function readInteger(Address) end

---Reads a QWORD (8 bytes) from the specified address and interprets them as an integer.
---@param Address CEAddressString | integer The address to read
---@return integer
function readQword(Address) end

---In a 64-bit target this equals `readQword`, in a 32-bit target `readInteger`.
---@param Address CEAddressString | integer The address to read
---@return integer
function readPointer(Address) end

---Reads a DWORD (4 bytes) at the given address and interprets them as a single precision floating point value.
---@param Address CEAddressString | integer The address to read
---@return float
function readFloat(Address) end

---Reads a QWORD (8 bytes) at the given address and interprets them as a double precision floating point value.
---@param Address CEAddressString | integer The address to read
---@return float
function readDouble(Address) end

---Reads the bytes at the given address and interprets them as a string
---@param Address CEAddressString | integer The address to read
---@param Maxlength	integer	The maximum number of characters to read. If the string does not have a 0-terminator this will be the length of the string returned
---@param isWideString? boolean	Determines if this string is read out as a widestring or a normal ascii string
---@return string
function readString(Address, Maxlength, isWideString) end
