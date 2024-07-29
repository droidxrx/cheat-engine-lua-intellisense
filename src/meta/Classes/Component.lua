---@meta

---@class Component : Object
---@field ComponentCount integer Number of child components.
---@field Component Component[] Array containing the child components. Starts at 0.
---@field ComponentByName Component[] Returns a component based on the name.
---@field Name string The name of the component.
---@field Tag integer Free to use storage space. (Usefull for id's)
---@field Owner Component Returns the owner of this object. Nil if it has none.
Component = {}

---Returns the number of components attached to his component
---@return integer
function Component.getComponentCount() end

---Returns the specific component.
---@param index integer
---@return Component
function Component.getComponent(index) end

---Returns the component with this name.
---@param name string
---@return Component
function Component.findComponentByName(name) end

---Return the name.
---@return string
function Component.getName() end

---Changes the name.
---@param newName string
function Component.setName(newName) end

---Get the tag value.
---@return integer
function Component.getTag() end

--Sets an integer value. You can use this for ID's.
---@param tagValue integer
function Component.setTag(tagValue) end

---Returns the owner of this component
---@return Component
function Component.getOwner() end