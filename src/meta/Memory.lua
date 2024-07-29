---@meta

---Allocates a specified size of memory into the target process.
---@param size integer The size of memory to allocate.
---@param BaseAddress? integer The address of the location to allocate memory.
---@param Protection? boolean Protect the allocated memory, or not.
function allocateMemory(size, BaseAddress, Protection) end

---Returns a newly created memory steam
---@return MemoryStream
function createMemoryStream() end
