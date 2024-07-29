---@meta

---@class CEForm : Form
---@field DoNotSaveInTable boolean Set this if you do not wish to save the forms in the table
CEForm = {}

---Saves a userdefined form
---@param filename string
function CEForm.saveToFile(filename) end

---Saves the userdefined form to the given stream
---@param s Stream
function CEForm.saveToStream(s) end

---Returns the DoNotSaveInTable property
---@return boolean
function CEForm.getDoNotSaveInTable() end

---Sets the DoNotSaveInTable property
---@param boolean boolean
function CEForm.setDoNotSaveInTable(boolean) end

---Sets the current state of the form as the state that will be saved when the table is saved
function CEForm.saveCurrentStateAsDesign() end

---creates a CEForm class object(window) and returns the pointer for it. Visible is default true but can be changed
---@param visible boolean? Optional
---@return CEForm
function createForm(visible) end

---Returns the generated CEform
---@param filename string
---@return CEForm
function createFormFromFile(filename) end

---Returns the generated CEform
---@param stream Stream
---@return CEForm
function createFormFromStream(stream) end
