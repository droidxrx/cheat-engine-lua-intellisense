---@meta

---Creates a process
---@param Path string Path to the executable
---@param Parameters string	The parameters to give . e.g: "-cheats on"
---@param Debug boolean	Creates the process with the windows debugger attached. (VEH and Kernel do not support launch time debugging)
---@param BreakOnEntry boolean	If true this will cause a breakpoint to hit on entrypoint
function createProcess(Path, Parameters, Debug, BreakOnEntry) end

---Causes cheat engine to open the provided processname or processid. \
---Please note that if you provide an integer in the form of a string openProcess will look for a process that has as name the specified number. Provide an integer if you wish to specify the PID. \
---Example:
---```
---openProcess("game.exe")
---openProcess(7890)
---openProcess(tonumber("7890"))
---```
---@param processNameOrProcessID integer | string
function openProcess(processNameOrProcessID) end

---If this function is defined it will be called whenever cheat engine opens a process. \
---Note: The same process might be opened multiple times in a row internally \
---Note: This function is called before attachment is fully done. You can call reinitializeSymbolhandler() to force the open to complete, but it will slow down process opens. Alternatively, you could launch a timer which will run when the opening has finished. \
---Examples:
---```
---function onOpenProcess(processId)
---    print(string.format('Process opened: %d', processId))
---end
---```
---@param processId integer The ID of the process that was opened
function onOpenProcess(processId) end

---Returns the processid of the program that is currently on the front
---@return integer
function getForegroundProcess() end

---Returns the process id of the process Cheat Engine has currently open. Returns the value 0 if no process is open
---@return integer
function getOpenedProcessID() end

---Searches the processlist for the given name and if found returns the processID. \
---Returns nil if not found
---@param processname string The processname to find
---@return integer | nil
function getProcessIDFromProcessName(processname) end

---Causes Cheat Engine to open the file with memory access as if it's a process
---@param fileName string The name of the file to open as a process
---@param is64bit boolean
function openFileAsProcess(fileName, is64bit) end

---Saves the changes of the currently opened file, set filename if you want a different file.
---@param fileName? string The name of the file you want to save as
function saveOpenedFile(fileName) end

---Sets the size Cheat Engine will deal with pointers in bytes. (Some 64-bit processes can only use 32-bit addresses)
---@param size integer The size in bytes Cheat Engine will use to deal with pointers
function setPointerSize(size) end

---Sets the assembler's bit size mode (0=32-bit, 1=64-bit)
---@param mode integer
function setAssemblerMode(mode) end

---Returns a table with the processlist (pid - name ), if 'Strings' is not set. \
---If 'Strings' is set fills a Strings inherited object with the process list of the system. \
---Format: %x-pidname
---@param Strings? StringList Set optionaly to the Strings object to fill
function getProcesslist(Strings) end

---Returns a table with the windowlist (PID - Window Caption). \
---The table has the following format : { PID, { ID, Caption} }
---@return { [integer]: string[] }
function getWindowlist() end

---pauses the currently opened process.
function pause() end

---resumes the currently opened process if it was paused.
function unpause() end

---Returns true if the the process Cheat Engine is attached to is 64-bit.
---@return boolean
function targetIs64Bit() end

---Returns a table containing information about each module in the current process, or the specified process id Each entry is a table with fields.
---@param ProcessID integer The process id to use insted of current process
---@return table
function enumModules(ProcessID) end
