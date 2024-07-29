---@meta

---@class CommonDialog : Component
---@field Title string The caption at top of the dialog
---@field OnShow fun(sender)
---@field OnClose fun(sender)
CommonDialog = {}

---Shows the dialog and return true/false depending on the dialog
function CommonDialog.Execute() end