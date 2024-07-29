---@meta

---@class GenericHotkey : Object
---@field DelayBetweenActivate integer Interval in milliseconds that determines the minimum time between hotkey activations. If set to 0, the global delay is used
---@field onHotKey function The function to call when the hotkey is pressed
GenericHotkey = {}

---@return number[]
function GenericHotkey.getKeys() end

---@param key number
---@param ... number
function GenericHotkey.setKeys(key, ...) end

---@param table table
function GenericHotkey.setOnHotkey(table) end

---@return function
function GenericHotkey.getOnHotkey() end

---Returns an initialized GenericHotkey class object. Maximum of 5 keys
---@param function_ function
---@param keys integer
---@param ... integer
---@return function
function createHotkey(function_, keys, ...) end

---Initializes a hotkey with a maximum of 5 keys
---@param function_ function
---@param keys integer[]
---@return function
function createHotkey(function_, keys) end
