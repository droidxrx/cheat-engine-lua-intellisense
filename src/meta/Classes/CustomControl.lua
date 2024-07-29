---@meta

---@class CustomControl : WinControl
---@field Canvas Canvas The canvas object for drawing on the control/. Readonly
CustomControl = {}

---an OnPaint event you can assign to do some extra painting
CustomControl.OnPaint = function () end

---Returns the Canvas object for the given object that has inherited from customControl
---@return Canvas
function CustomControl.getCanvas() end
