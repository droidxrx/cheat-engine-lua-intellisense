---@meta

---@class MemoryStream : Stream
---@field Memory integer The address in Cheat Engine's memory this stream is loaded (READONLY, tends to change on size change)
MemoryStream = {}

---Replaces the contents in the memory stream with the contents of a file on disk
function MemoryStream.loadFromFile(filename) end

---Writes the contents of the memory stream to the specified file
function MemoryStream.saveToFile(filename) end

---Replaces the contents in the memory stream with the contents of a file on disk. On success returns true, else false with a secondary return the error message
---@param filename string
---@return boolean,string
function MemoryStream.loadFromFileNoError(filename) end

---Writes the contents of the memory stream to the specified file. On success returns true, else false with a secondary return the error message
---@param filename string
---@return boolean,string
function MemoryStream.saveToFileNoError(filename) end

---sets the size to 0
function MemoryStream.clear() end

---@return MemoryStream
function createMemoryStream() end
