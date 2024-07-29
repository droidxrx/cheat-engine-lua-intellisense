---@meta

---@class Form : ScrollingWinControl
---@field DesignTimePPI integer the PPI/DPI at the time the form was designed
---@field AllowDropFiles boolean Allows files to be dragged into the form
---@field ModalResult integer The current ModalResult value of the form. Note: When this value gets set the modal form will close
---@field Menu MainMenu The main menu of the form
---@field FormState string ReadOnly - The current state of the form. Possible values: fsCreating, fsVisible, fsShowing, fsModal, fsCreatedMDIChild, fsBorderStyleChanged, fsFormStyleChanged, fsFirstShow, fsDisableAutoSize
Form             = {}

---The function to call when the form gets closed
---@param sender any
Form.OnClose     = function(sender) end
---Called when files are dragged on top of the form. Filenames is an arraytable with the files
---@param sender any
---@param filenames table
Form.OnDropFiles = function(sender, filenames) end

---Resizes controls and fonts based on the current DPI and the DPI used to create the form. Only use this on forms that are not designed with variable DPI in mind
function Form.fixDPI() end

---Places the form at the center of the screen
function Form.centerScreen() end

---Hide the form
function Form.hide() end

---show the form
function Form.show() end

---Closes the form. Without an onClose this will be the same as hide
function Form.close() end

---Brings the form to the foreground
function Form.bringToFront() end

---show the form and wait for it to close and get the close result
function Form.showModal() end

---returns true if the specified form has focus
---@return boolean
function Form.isForegroundWindow() end

---Return a CloseAction to determine how to close the window
---@param function_ function function(sender)
function Form.setOnClose(function_) end

---Returns the function
---@return function #function(sender)
function Form.getOnClose() end

---Returns the mainmenu object of this form
---@return MainMenu
function Form.getMenu() end

---@param mainmenu MainMenu
function Form.setMenu(mainmenu) end

---Sets the borderstyle of the window
---@param borderstyle integer
function Form.setBorderStyle(borderstyle) end

---@return integer
function Form.getBorderStyle() end

---Draws the contents of the form to a rasterimage class object
---@param rasterimage RasterImage
function Form.printToRasterImage(rasterimage) end

---Registers a function to be called when the form has finished being created
---@param function_ any function(f)
---@return any #userdata
function Form.registerCreateCallback(function_) end

---removes the specific callback
---@param userdata any
function Form.unregisterCreateCallback(userdata) end

---Registers a function to be called when the form is show the first time
---@param function_ any function(f)
---@return any #userdata
function Form.registerFirstShowCallback(function_) end

---removes the specific callback
---@param userdata any
function Form.unregisterFirstShowCallback(userdata) end

---Registers a function to be called when the form has been closed
---@param function_ any function(f)
---@return any #userdata
function Form.registerCloseCallback(function_) end

---removes the specific callback
---@param userdata any
function Form.unregisterCloseCallback(userdata) end

---Call this on mousedown on any object if you wish that the mousemove will drag the whole form arround. Useful for borderless windows (Dragging will stop when the mouse button is released)
function Form.dragNow() end

---Saves the current form position and dimensions and an optional list of integer. The name of the form must have been set to a unique name
---@param IntegerTable? integer[]
function Form.saveFormPosition(IntegerTable) end

---Restores the form position and dimensions. On success returns true and a integer table if that was provided with the save.  The name of the form must have been set to a unique name
---@param IntegerTable? integer[] Optional can be nil
---@return boolean
function Form.loadFormPosition(IntegerTable) end
