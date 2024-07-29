---@meta

---@class Pen : CustomPen
---@field Color integer The color of the pen
---@field Width integer Thickness of the pen
Pen = {}

---@return integer
function Pen.getColor() end

---@param color integer
function Pen.setColor(color) end

---@return integer
function Pen.getWidth() end

---@param width integer
function Pen.setWidth(width) end
