---@meta

---Passes the given string to Cheat Engine's symbol handler and returns the corresponding address as an integer. Can be a module name or an export. Set local to true if you wish to query the symbol table of the CE process. \
---If errorOnLookupFailure is set to true (the default value), if you look up a symbol that does not exist, it will throw an error. With errorOnLookupFailure set to false, it will return 0.
---@param AddressString CEAddressString The AddressString to convert to an integer
---@param local_? boolean Set to true if you wish to query the symbol table of the CE process
---@return integer
function getAddress(AddressString, local_) end

---Passes the given string to Cheat Engine's symbol handler and returns the corresponding address as an integer, or nil if not found. Similar to getAddress when errorOnLookup is false, but returns nil instead. \
---Can be a module name or an export. Set local to true if you wish to query the symbol table of the CE process.
---@param AddressString CEAddressString The AddressString to convert to an integer
---@param local_? boolean Set to true if you wish to query the symbol table of the CE process
---@return integer
function getAddressSafe(AddressString, local_) end

---Returns the symbolname for the given address. If no symbolname is found, it will return a hexadecimal string
---@param address CEAddressString The address to convert to a string
---@return string
function getNameFromAddress(address) end

---Registers a string that will be associated with the given address.
---@param symbolname string The string that should be associated with the address
---@param address CEAddressString | integer The address to associate with the string
---@param donotsave? boolean Optional parameter that when set to true will prevent cheat engine from saving this symbol in the cheat table
function registerSymbol(symbolname, address, donotsave) end

---Unregisters a string so that it's name will no longer be associated with the given address.
---@param symbolname string The string that should be removed
function unregisterSymbol(symbolname) end

---Reloads the symbol table of the currently selected process and waits till they are loaded. Call this if you want to use assembler script and functions that make use of symbols (like speedhack_setSpeed) and you're in a state where the symbols aren't fully loaded yet (e.g: The onOpenProcess event)
function reinitializeSymbolhandler() end

---Returns true if the provided address resides inside a module (example: .exe or .dll) \
---If errorOnLookupFailure is set to true (the default value), if you look up a symbol that does not exist, it will throw an error. With errorOnLookupFailure set to false, it will return false.
---@param address CEAddressString The address to look up
---@return boolean
function inModule(address) end

---Returns true if the provided address resides inside a module (example: .exe or .dll) stored inside the system's Windows folder (usually C:\Windows\).
---@param address CEAddressString The address to look up
---@return boolean
function inSystemModule(address) end

---Returns the size of a given module. \
---Tip: Use getAddress to get the base address.
---@param ModuleName string The module name to get the size of
---@return integer
function getModuleSize(ModuleName) end

---If set to true (default) address lookups in string form will raise an error if it can not be looked up. This includes symbol names that are not defined and pointers that are bad. If set to false it will return 0 in those cases (Useful for pointers that don't work 100% of the time) \
---6.4+:Returns the original state
---@param state boolean Whether to raise errors on address lookup failures
---@return boolean
function errorOnLookupFailure(state) end
