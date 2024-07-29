---@meta

---@class Strings : Object
---@field LineBreak string the character(s) to count as a linebreak
---@field Text string All the strings in one string
---@field Count integer The number of strings in this list
---@field String string[] Array to access one specific string in the list
---@field Data integer[] Array to access the data of a specific string in the list
---@field [integer]string String[]
Strings = {}
---Deletes all strings in the list
function Strings.clear() end

---@param string string
---@param data integer?
function Strings.add(string, data) end

---adds multiple strings at once
---@param strings {[integer]: string[]}
function Strings.addText(strings) end

---Deletes a string from the list
---@param index integer
function Strings.delete(index) end

---Returns all the strings as one big string
---@return {[integer]: string[]}
function Strings.getText() end

---Sets the strings of the given strings object to the given text (can be multiline)
---@param string string
function Strings.setText(string) end

---Returns the index of the specified string. Returns -1 if not found
---@param string string
---@return integer
function Strings.indexOf(string) end

---Inserts a string at a specific spot moving the items after it
---@param index integer
---@param string string
function Strings.insert(index, string) end

---Returns the number is strings in the list
---@return integer
function Strings.getCount() end

---Removes the given string from the list
---@param string string
function Strings.remove(string) end

---Load the strings from a textfile. If ignoreEncoding is false then the file will be loaded with the best encoding the loader can guess
---@param filename string
---@param ignoreencoding? boolean
function Strings.loadFromFile(filename, ignoreencoding) end

---Save the strings to a textfile
---@param filename string
function Strings.saveToFile(filename) end

---gets the string at the given index
---@param index integer
---@return string
function Strings.getString(index) end

---Replaces the string at the given index
---@param index integer
---@param string string
function Strings.setString(index, string) end

---Returns the integer value stored in the string
---@return integer
function Strings.getData(index) end

---Sets the integer value stored in the string
---@param index integer
---@param integer integer
function Strings.setData(index, integer) end

---Stops updates from triggering other events (prevents flashing)
function Strings.beginUpdate() end

---call after beginUpdate
function Strings.endUpdate() end
