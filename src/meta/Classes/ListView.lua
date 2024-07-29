---@meta

---@class ListView : WinControl
---@field Columns ListColumns The Listcolumns object of the listview (Readonly)
---@field Items ListItems The ListItems objects of the listview
---@field ItemIndex integer The currently selected index in the Items object  (-1 if nothing is selected)
---@field Selected ListItem The currently selected listitem (nil if nothing is selected)
---@field TopItem ListItem The first visible item in the listview
---@field VisibleRowCount integer The number of lines currently visible
---@field Canvas Canvas The canvas object used to render the listview  (Readonly)
---@field AutoWidthLastColumn boolean When set to true the last column will resize when the control resizes
---@field HideSelection boolean When set to true the selection will not hide when the focus leaves the control
---@field RowSelect boolean When set to true the whole row will be selected instead of just the first column
---@field OwnerData boolean When set to true the listview will call the onData function for every line being displayed. Use Items.Count to set the number of virtual lines
---@field LargeImages ImageList
---@field SmallImages ImageList
---@field StateImages ImageList
---@field OnData fun(sender, ListItem) - Called when a listview with OwnerData true renders a line
ListView = {}

---@param Sender any
---@param rect TRect
---@param DefaultDraw? any
---@return any #NewDefaultDraw
ListView.OnCustomDraw = function(Sender, rect, DefaultDraw) end

---@param Sender any
---@param ListItem ListItem
---@param tbl table {cdsSelected=true/false(nil), cdsGrayed=true/false(nil), cdsDisabled, cdsChecked, cdsFocused, cdsDefault, cdsHot, cdsMarked, cdsIndeterminate}
---@param DefaultDraw? any
---@return any #NewDefaultDraw
ListView.OnCustomDrawItem = function(Sender, ListItem, tbl, DefaultDraw) end

---@param Sender any
---@param ListItem ListItem
---@param SubItemIndex integer
---@param tbl table {cdsSelected=true/false(nil), cdsGrayed=true/false(nil), cdsDisabled, cdsChecked, cdsFocused, cdsDefault, cdsHot, cdsMarked, cdsIndeterminate}
---@param DefaultDraw? any
---@return any #NewDefaultDraw
ListView.OnCustomDrawSubItem = function(Sender, ListItem, SubItemIndex, tbl, DefaultDraw) end

function ListView.clear() end

---ListColumns - Returns a ListColumns object
---@return ListColumns
function ListView.getColumns() end

---Returns the ListItem at the given index. nil if nothing
---@param x integer
---@param y integer
---@return ListItem|nil
function ListView.getItemAt(x, y) end

---Returns a ListItems object
---@return ListItems
function ListView.getItems() end

---Returns the currently selected index in the Items object
---@return integer
function ListView.getItemIndex() end

---Sets the current itemindex
---@param index integer
function ListView.setItemIndex(index) end

---Returns the canvas object used to render the listview
---@return Canvas
function ListView.getCanvas() end

---Tells the listview to stop updating while you're busy
function ListView.beginUpdate() end

---Applies all updates between beginUpdate and endUpdate
function ListView.endUpdate() end

---Creates a ListView class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return ListView
function createListView(owner) end
