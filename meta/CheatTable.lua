---@meta

---Returns the cheat table `Addresslist` UserData object
---@return Addresslist
function getAddressList() end

---Returns the TableFile class object for the saved file
---@param fileName string The name of the file added to the cheat table
---@return TableFile
function findTableFile(fileName) end

---Returns a newly added table file.\
---If no file path is specified, it will create a blank file. Otherwise, it will read the contents from disk.
---@param fileName string The name of the file to be added to the cheat table
---@param filePath? string The path to the file to be added to the cheat table
---@return TableFile
function createTableFile(fileName, filePath) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param fileName string The name of the file to be added to the cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
function loadTable(fileName, merge) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param memoryStream MemoryStream The memory stream to load as a cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
---@param ignoreLuaScriptDialog boolean
function loadTable(memoryStream, merge, ignoreLuaScriptDialog) end

---Saves the current table. If protect is provided and set to true and the filename has the ".CETRAINER" extension, it will protect it from reading normally.
---@param fileName string The name of the file to save cheat table to
---@param protect? boolean If set to true and the filename has the ".CETRAINER" extension, it will protect it from reading normally
function saveTable(fileName, protect) end
