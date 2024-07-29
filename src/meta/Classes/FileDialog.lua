---@meta

---@class FileDialog : CommonDialog
---@field DefaultExt string When not using filters this will be the default extention used if no extension is given
---@field Files Strings Stringlist containing all selected files if multiple files are selected
---@field FileName string The filename that was selected
---@field Filter string A filter formatted string
---@field FilterIndex integer The index of which filter to use
---@field InitialDir string Sets the folder the filedialog will show first