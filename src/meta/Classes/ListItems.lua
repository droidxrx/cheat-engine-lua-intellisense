---@meta

---@class ListItems : Object
---@field Count integer The number of ListItems this object holds (Normally read only, but writable if OwnerData is true in the listview)
---@field Item ListItem[] Array to access each ListItem object
---@field [integer]ListItem
ListItems = {}

function ListItems.clear() end

---@return integer
function ListItems.getCount() end

---Return the listitem object at the given index
---@param index integer
function ListItems.getItem(index) end

---Returns a new ListItem object
---@return ListItem
function ListItems.add() end
