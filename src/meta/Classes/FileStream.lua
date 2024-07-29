---@meta

---Inheritance from HandleStream
---@class FileStream : Stream

---Creates a filestream object
---@param filename string
---@param mode integer mode can be fmCreate(0xff00), fmOpenRead, fmOpenWrite or fmOpenReadWrite and can be or-ed with fmShareCompat(0x0000), fmShareExclusive(0x0010), fmShareDenyWrite(0x0020), fmShareDenyRead(0x0030) or fmShareDenyNone(0x0040)
---@return FileStream
function createFileStream(filename, mode) end