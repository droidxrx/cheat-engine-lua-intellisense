---@meta

---Abstract class
---@class Graphic : Object
---@field Width integer
---@field Height integer
---@field Transparent boolean
Graphic = {}

---@param graphic Graphic
---@return integer
function Graphic.getWidth(graphic) end

---@param graphic Graphic
---@param width integer
function Graphic.setWidth(graphic, width) end

---@param graphic Graphic
---@return integer
function Graphic.getHeight(graphic) end

---@param graphic Graphic
---@param height integer
function Graphic.setHeight(graphic, height) end

---@param filename string
function Graphic.loadFromFile(filename) end

---@param filename string
function Graphic.saveToFile(filename) end
