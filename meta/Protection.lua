---@meta

---Prevents basic memory scanners from opening the cheat engine process.
function activateProtection() end

---Prevents normal memory scanners from reading the Cheat Engine process (kernel mode).
function enableDRM() end

---Converts a given function into an encoded string that you can pass to `decodeFunction`.
---@param function_ function The function to encode
---@param protect? boolean
---@return string
function encodeFunction(function_, protect) end

---Converts a given string converted by `encodeFunction` back into function.
---@param encodedString string The string to decode into a function
---@return function
function decodeFunction(encodedString) end
