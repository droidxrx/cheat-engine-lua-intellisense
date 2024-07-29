---@meta

---@class Stream
---@field Size integer
---@field Position integer
Stream = {}

---Copies count bytes from the given stream to this stream
---@param stream Stream
---@param count integer
function Stream.copyFrom(stream, count) end

---Returns a bytetable containing the bytes of the stream. This increases the position
---@param count integer
---@return integer[] #bytetable
function Stream.read(count) end

---Writes the given bytetable to the stream
---@param bytetable integer[]
---@param count? integer
function Stream.write(bytetable, count) end

---@return integer
function Stream.readByte() end

---@param integer integer
function Stream.writeByte(integer) end

---@return integer
function Stream.readWord() end

---@param integer integer
function Stream.writeWord(integer) end

---@return integer
function Stream.readDword() end

---@param integer integer
function Stream.writeDword(integer) end

---@return integer
function Stream.readQword() end

---@param integer integer
function Stream.writeQword(integer) end

---Reads a given stringcount
---@param stringlengthinbytes integer
---@return string
function Stream.readString(stringlengthinbytes) end

---@param string string
---@param include0terminator? boolean Default false
function Stream.writeString(string, include0terminator) end

---@return string
function Stream.readAnsiString() end

---@param string string
function Stream.writeAnsiString(string) end
