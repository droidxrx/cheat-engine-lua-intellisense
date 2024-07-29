---@meta

---@class TableFile : Object
---@field Name string
---@field Stream MemoryStream
---@field DoNotSave boolean
TableFile = {}

---Deletes this file from your table.
function TableFile.delete() end

---@param filename string
function TableFile.saveToFile(filename) end

---Gets a MemoryStream object
function TableFile.getData() end

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

