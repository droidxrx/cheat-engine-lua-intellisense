---@meta

---@class MenuItem : Component
---@field Caption  string Text of the menu item
---@field Shortcut  string Shortcut in textform to trigger the menuitem
---@field Count  integer Number of children attached to this menuitem
---@field Menu Menu The menu this item resides in
---@field Parent MenuItem The menuitem this item hangs under
---@field MenuIndex integer The position this menu item is in it's parent
---@field ImageList ImageList
---@field ImageIndex integer Which image of the attached ImageList to show
---@field Item MenuItem[]  Array to access each child menuitem
---@field [integer]MenuItem
---@field OnClick function to call when the menu item is activated
---@field FontColor integer of the font. (Only works when in dark mode)
MenuItem = {}

---Gets the caption of the menu item
---@return string
function MenuItem.getCaption() end

---Sets the caption of the menu item
---@param caption string
function MenuItem.setCaption(caption) end

---Returns the shortcut for this menu item
---@return string
function MenuItem.getShortcut() end

---Sets the shortcut for this menuitem. A shortcut is a string in the form of ("ctrl+x")
---@param shortcut string
function MenuItem.setShortcut(shortcut) end

---@return integer
function MenuItem.getCount() end

---Returns the menuitem object at the given index
---@param index integer
---@return MenuItem
function MenuItem.getItem(index) end

---Adds a menuItem as a submenu item
---@param menuitem MenuItem
function MenuItem.add(menuitem) end

---Adds a menuItem as a submenu item at the given index
---@param index integer
---@param menuitem MenuItem
function MenuItem.insert(index, menuitem) end

function MenuItem.delete(index) end

---Deletes all children under this menuitem (frees the menu item, so it's gone)
function MenuItem.clear() end

---Sets an onClick event
---@param function_ function
function MenuItem.setOnClick(function_) end

---@retunr function_
function MenuItem.getOnClick() end

---Executes the onClick method if one is assigned
function MenuItem.doClick() end

---Creates a menu item that gets added to the owner menu
---@param ownermenu any
---@return MenuItem
function createMenuItem(ownermenu) end
