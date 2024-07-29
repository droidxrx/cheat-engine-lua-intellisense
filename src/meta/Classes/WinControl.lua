---@meta

---@class WinControl : Control
---@field Handle integer The internal windows handle
---@field DoubleBuffered boolean Graphical updates will go to a offscreen bitmap which will then be shown on the screen instead of directly to the screen. May reduce flickering
---@field ControlCount integer The number of child controls of this wincontrol
---@field Control Control[] Array to access a child control
---@field OnEnter function Function to be called when the WinControl gains focus
---@field OnExit function Function to be called when the WinControl loses focus
WinControl = {}

---Returns the number of Controls attached to this class
---@return integer
function WinControl.getControlCount() end

---Returns a WinControl class object
---@param index integer
---@return Control
function WinControl.getControl(index) end

---Gets the Control at the given x,y position relative to the WinControl's position
---@param x integer
---@param y integer
---@return integer,integer
function WinControl.getControlAtPos(x, y) end

---returns true if the object can be focused
---@return boolean
function WinControl.canFocus() end

---returns boolean true when focused
---@return boolean
function WinControl.focused() end

---tries to set keyboard focus to the object.
function WinControl.setFocus() end

---Sets the Region/Bitmap object as the new shape for this WinControl.
---@param regionOrbitmap Region|Bitmap
function WinControl.setShape(regionOrbitmap) end

---Sets an 'onEnter' event. (Triggered on focus enter)
---@param function_ function
function WinControl.setOnEnter(function_) end

---Returns the 'onEnter' event.
---@return function
function WinControl.getOnEnter() end

---Sets an 'onExit' event. (Triggered on lost focus)
---@param function_ function
function WinControl.setOnExit(function_) end

---Returns the 'onExit' event.
---@return function
function WinControl.getOnExit() end

---Sets the layered state for the control if possible (Only Forms are supported in in windows 7 and earlier)
---@param Key integer
---@param Alpha integer
---@param Flags integer flags can be a combination of LWA_ALPHA and/or LWA_COLORKEY
function setLayeredAttributes(Key, Alpha, Flags) end