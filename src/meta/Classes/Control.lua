---@meta

---@class Control : Component
---@field Caption string The text of a control
---@field Top integer The x position
---@field Left integer The y position
---@field Width integer The width of the control
---@field Height integer The height of the control
---@field ClientWidth integer The usable width inside the control (minus the borders)
---@field ClientHeight integer The usable height the control (minus the borders)
---@field Align AlignmentOption Alignment of the control
---@field Enabled boolean Determines if the object is usable or greyed out
---@field Visible boolean Determines if the object is visible or not
---@field Color integer The color of the object. Does not affect the caption
---@field RGBColor integer The color of the object in RGB formatting
---@field Parent WinControl The owner of this control
---@field PopupMenu PopupMenu The popup menu that shows when rightclicking the control
---@field Font Font The font class associated with the control
Control                = {}
---The function to call when a button is pressed
---@param sender any
Control.OnClick        = function(sender) end
---Called when the size or position of the control changes
---@param sender any
Control.OnChangeBounds = function(sender) end

---@return integer
function Control.getLeft() end

---@param integer integer
function Control.setLeft(integer) end

---@return integer
function Control.getTop() end

---@param integer integer
function Control.setTop(integer) end

---@return integer
function Control.getWidth() end

---@param integer integer
function Control.setWidth(integer) end

---@return integer
function Control.getHeight() end

---@param integer integer
function Control.setHeight(integer) end

---sets the text on a control. All the GUI objects fall in this category
---@param caption string
function Control.setCaption(caption) end

---Returns the text of the control
---@return string
function Control.getCaption() end

---sets the x and y position of the object base don the top left position (relative to the client array of the owner object)
---@param x integer
---@param y integer
function Control.setPosition(x, y) end

---returns the x and y position of the object (relative to the client array of the owner object)
---@return integer,integer
function Control.getPosition() end

---Sets the width and height of the control
---@param width integer
---@param height integer
function Control.setSize(width, height) end

---Gets the size of the control
---@return integer,integer
function Control.getSize() end

---sets the alignment of the control
---@param alignmentoption AlignmentOption
function Control.setAlign(alignmentoption) end

---gets the alignment of the control
---@param alignmentoption? AlignmentOption
---@return AlignmentOption
function Control.getAlign(alignmentoption) end

---gets the enabled state of the control
---@return boolean
function Control.getEnabled() end

---Sets the enabled state of the control
---@param boolean boolean
function Control.setEnabled(boolean) end

---gets the visible state of the control
---@return boolean
function Control.getVisible() end

---sets the visible state of the control
---@param boolean boolean
function Control.setVisible(boolean) end

---gets the color
---@return integer
function Control.getColor() end

---Sets the color
---@param rgb integer
function Control.setColor(rgb) end

---Returns nil or an object that inherits from the Wincontrol class
---@return WinControl|nil
function Control.getParent() end

---Sets the parent for this control
---@param wincontrol WinControl
function Control.setParent(wincontrol) end

---@return PopupMenu
function Control.getPopupMenu() end

---@param popupMenu PopupMenu
function Control.setPopupMenu(popupMenu) end

--- Returns the Font object of this object
---@return Font
function Control.getFont() end

--- Assigns a new font object. (Not recommended to use. Change the font object that's already there if you wish to change fonts)
---@param font Font
function Control.setFont(font) end

---Invalidates the graphical area of the control and forces and update
function Control.repaint() end

---updates the control (usually a repaint)
function Control.refresh() end

---Only updates the invalidated areas
function Control.update() end

---Sets the onclick routine
---@param functionnameorstring function|string
function Control.setOnClick(functionnameorstring) end

---Gets the onclick function
---@return function
function Control.getOnClick() end

--- Executes the current function under onClick
function Control.doClick() end

---Changes the z-order of the control so it'd at the top
function Control.bringToFront() end

---Changes the z-order of the control so it'd at the back
function Control.sendToBack() end

---Converts screen x,y coordinates to x,y coordinates on the control
---@param x integer
---@param y integer
function Control.screenToClient(x, y) end

---Converts control x,y coordinates to screen coordinates
---@param x integer
---@param y integer
function Control.clientToScreen(x, y) end