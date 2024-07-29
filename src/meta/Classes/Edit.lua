---@meta

---@class Edit : WinControl
---@field Text string The current contents of the editfield
---@field CaretPos Point The posaition of the caret
---@field PasswordChar string When not set to char0 this will make the edit field show the character instead of the given text
---@field SelText string The current selected contents of the edit field
---@field SelStart number The starting index of the current selection (zero-indexed)
---@field SelLength number The length of the current selection.
---@field OnChange fun(...:any) The function to call when the editfield is changed
---@field OnKeyPress fun(...:any) The function to call for the KeyPress event.
---@field OnKeyUp fun(...:any) The function to call for the KeyUp event.
---@field OnKeyDown fun(...:any) The function to call for the KeyDown event.
Edit = {}

function Edit.clear() end

function Edit.copyToClipboard() end

function Edit.cutToClipboard() end

function Edit.pasteFromClipboard() end

function Edit.selectAll() end

---@param start integer
---@param length? integer
function Edit.select(start, length) end

---Set the control's current selection. If no length is specified, selects everything after start.
---@param start integer
---@param length? integer
function Edit.selectText(start, length) end

function Edit.clearSelection() end

function Edit.getSelText() end

function Edit.getSelStart() end

function Edit.getSelLength() end

---@return fun(...:any)
function Edit.getOnChange() end

---@param fun fun(...:any)
function Edit.setOnChange(fun) end

---@return fun(...:any)
function Edit.getOnKeyPress() end

---@param fun fun(...:any)
function Edit.setOnKeyPress(fun) end

---@return fun(...:any)
function Edit.getOnKeyUp() end

---@param fun fun(...:any)
function Edit.setOnKeyUp(fun) end

---@return fun(...:any)
function Edit.getOnKeyDown() end

---@param fun fun(...:any)
function Edit.setOnKeyDown(fun) end

---Creates an Edit class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return Edit
function createEdit(owner) end
