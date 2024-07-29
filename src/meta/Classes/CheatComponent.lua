---@meta

---The cheatcomponent class is the component used in Cheat Engine 5.x trainers \
---Most people will probably want to design their own components but for those that don't know much coding and use the autogenerated trainer this will be used
---@class CheatComponent : WinControl
---@field Color integer background color
---@field Textcolor integer text color
---@field Activationcolor integer The textcolor to show when activated is true
---@field Activated boolean Toggles between the ActivationColor and the TextColor
---@field Editleft integer The x position of the optional edit field
---@field Editwidth integer the width of the optional edit field
---@field Editvalue string The string of the optional edit field
---@field Hotkey string read The hotkeypart of the cheat line
---@field Description string Description part of the cheat line
---@field Hotkeyleft integer The x position of the hotkey line
---@field Descriptionleft integer The x position of the Description line
---@field ShowHotkey boolean Decides if the hotkey label should be shown
---@field HasEditBox boolean Decides if the editbox should be shown
---@field HasCheckbox boolean Decides if the checkbox should be shown
---@field Font Font The font to use to render the text
