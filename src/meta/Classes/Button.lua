---@meta

---@class Button : ButtonControl
---@field ModalResult integer The result this button will give the modalform when clicked
Button = {}

function Button.getModalResult(button) end

function Button.setModalResult(button, mr) end

---Creates a Button class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return Button
function createButton(owner) end
