---@meta

---@class CheckBox : ButtonControl
---@field Checked boolean True if checked
---@field AllowGrayed boolean True if it can have 3 states. True/False/None
---@field State integer The state. (cbUnchecked=0, cbChecked=1, cbGrayed=2)
---@field OnChange function Function to call when the state it changed
CheckBox = {}

---@return boolean
function CheckBox.getAllowGrayed() end

---@param value boolean
function CheckBox.setAllowGrayed(value) end

---Returns a state for the checkbox. (cbUnchecked, cbChecked, cbGrayed)
---@return integer
function CheckBox.getState() end

---Sets the state of the checkbox
---@param value integer
function CheckBox.setState(value) end

function CheckBox.onChange() end

---Creates a CheckBox class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return CheckBox
function createCheckBox(owner) end
