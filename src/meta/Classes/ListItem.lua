---@meta

---@class ListItem : Object
---@field Caption string The text of this listitem
---@field Checked boolean Determines if the checkbox is checked (if it has a checkbox)
---@field SubItems Strings The Strings object that hold the subitems
---@field Selected boolean Returns true if selected
---@field Index integer The index in the Items object of the owner of this listitem (readonly)
---@field ImageIndex integer The index in the attached imagelist (LargeImages/SmallImages)
---@field StateIndex integer The index in the attached imagelist (StateImages)
---@field Owner ListItems The ListItems object that owns this ListItem (readonly)
---@field Data integer Read/Write value up to the user to implement
ListItem = {}

function ListItem.delete() end

---Returns the first columns string of the listitem
---@return string
function ListItem.getCaption() end

---Sets the first column string of the listitem
---@param string string
function ListItem.setCaption(string) end

---Returns true if the listitem is checked
---@return boolean
function ListItem.getChecked() end

---Sets the checkbox of the listbox to the given state
---@param boolean boolean
function ListItem.setChecked(boolean) end

---Returns a Strings object
---@return Strings
function ListItem.getSubItems() end

---Scrolls the listview so this item becomes visible (Cheat Engine 6.4 and later)
---@param partial any
function ListItem.makeVisible(partial) end

---returns the displayed rectangle of the listitem. code can be: drBounds(0), drIcon(1), drLabel(2), drSelectBounds(3)
---@param code integer
---@return TRect
function ListItem.displayRect(code) end

---returns the displayed rectangle of the listitem. code can be: drBounds(0), drIcon(1), drLabel(2), drSelectBounds(3)
---@param code integer
---@return TRect
function ListItem.displayRectSubItem(code) end
