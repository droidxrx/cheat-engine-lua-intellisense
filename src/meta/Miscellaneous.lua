---@meta

---Injects a specific dll into the target process
---Example:
---```
---injectDll( "[[c:\\mydll.dll]]" )
---```
---@param pathtodll string The full path to the dll. If only a filename is given without path, the normal windows search path is used
function injectDll(pathtodll) end

---Executes a specific commandline command. The commands are the same you can type in the "run..." command and in the file header of an explorer window. \
---Example:
---```
---shellExecute("http://cheatengine.org")
---shellExecute("calc")
---shellExecute("c:\")
---shellExecute("regedit")
---```
---@param command string The command to execute
function shellExecute(command) end

---Executes a stdcall function with 1 parameter at the given address in the target process and wait for it to return. \
---The return value is the result of the function that was called
---@param address any
---@param parameter? any
---@param timeout? any
---@return any
function executeCode(address, parameter, timeout) end

---```
---address: Address to execute
---{type,value} : Table containing the value type, and the value
---  {
---  type: 0=integer (32/64bit) can also be a pointer
---        1=float (32-bit float)
---        2=double (64-bit float)
---        3=ascii string (will get converted to a pointer to that string)
---        4=wide string (will get converted to a pointer to that string)
---  value: anything base type that lua can interpret
---  }
---```
---if just param is provided CE will guess the type based on the provided type. \
---Example:
---```
---local result = executeCodeEx(0, nil, "MessageBoxA", 0, {type=3,value="title"}, {type=3,value="content"}, 0)
---print( result )
---```
---@param callmethod integer 0=stdcall, 1=cdecl
---@param timeout integer|nil Number of milliseconds to wait for a result. nil or -1, infitely. 0 is no wait (will not free the call memory, so beware of it's memory leak)
---@param address any
---@param ... any
---@return any
function executeCodeEx(callmethod, timeout, address, ...) end

---Executes a stdcall function with 1 parameter at the given address in the target process. The return value is the result of the function that was called
---@param addres any
---@param parameter? any
---@return any
function executeCodeLocal(addres, parameter) end

---Calls a function using the given callmethod and parameters \
---If a direct parameter is given instead of a table entry describing the type, CE will 'guess' the type it is \
---Returns the E/RAX value returned by the called function (if no timeout or other interruption)
---Example:
---```
---local result = executeCodeLocalEx("MessageBoxA", 0, {type=3,value="title"}, {type=3,value="content"}, 0)
---print( result )
---```
---@param address any
---@param ... unknown
---@return any
function executeCodeLocalEx(address, ...) end
