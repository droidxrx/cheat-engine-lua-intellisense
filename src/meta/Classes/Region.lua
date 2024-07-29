---@meta

---@class Region : GraphicsObject
Region = {}

---Adds a rectangle to the region
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Region.addRectangle(x1, y1, x2, y2) end

---Adds an array of 2D locations. (example : {{0,0},{100,100}, {0,100}} for a triangle )
---@param tablewithcoordinates { [integer]: integer[] }
function Region.addPolygon(tablewithcoordinates) end

---Creates an empty region.
---@return Region
function createRegion() end
