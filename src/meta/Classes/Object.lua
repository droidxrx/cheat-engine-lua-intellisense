---@meta

---Base class for all objects
---@class Object
---@field ClassName string The name of class.
Object = {}

---Returns the class name
---@return string
function Object.getClassName() end

---Returns the address of the specific field
---@param fieldname string
---@return integer
function Object.fieldAddress(fieldname) end

---@param methodname string
---@return integer
function Object.methodAddress(methodname) end

---@param address integer
---@return string
function Object.methodName(address) end

---Destroys the object
function Object.destroy() end