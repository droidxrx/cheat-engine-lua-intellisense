---@meta

---@class Canvas : CustomCanvas
---@field Brush Brush The brush object
---@field Pen Pen The pen object
---@field Font Font The font object
---@field Width integer Width of the canvas
---@field Height integer Height of the canvas
---@field Handle integer DC handle of the canvas
Canvas = {}

---Returns the brush object of this canvas
---@return Brush
function Canvas.getBrush() end

---Returns the pen object of this canvas
---@return Pen
function Canvas.getPen() end

---Returns the font object of this canvas
---@return Font
function Canvas.getFont() end

---@return integer
function Canvas.getWidth() end

---@return integer
function Canvas.getHeight() end

---@return integer,integer
function Canvas.getPenPosition() end

---@param x integer
---@param y integer
function Canvas.setPenPosition(x, y) end

function Canvas.clear() end

---@param sourcex integer
---@param sourcey integer
---@param destinationx integer
---@param destinationy integer
function Canvas.line(sourcex, sourcey, destinationx, destinationy) end

---@param destinationx integer
---@param destinationy integer
function Canvas.lineTo(destinationx, destinationy) end

---@param destinationx integer
---@param destinationy integer
function Canvas.moveTo(destinationx, destinationy) end

---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas.rect(x1, y1, x2, y2) end

---Draws a filled rectangle
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas.fillRect(x1, y1, x2, y2) end

---Draws a rectangle with rounded corners
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param rx integer
---@param ry integer
function Canvas.roundRect(x1, y1, x2, y2, rx, ry) end

---Draws the focus rectangle shape
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas.drawFocusRect(x1, y1, x2, y2) end

---@param x integer
---@param y integer
---@param text string
function Canvas.textOut(x, y, text) end

---write the text within the given rectangle. The text supports some ansi escape characters
---@param rect TRect
---@param x integer
---@param y integer
---@param text string
function Canvas.textRect(rect, x, y, text) end

---@param text string
---@return integer
function Canvas.getTextWidth(text) end

---@param text string
---@return integer
function Canvas.getTextHeight(text) end

---@param x integer
---@param y integer
---@return integer
function Canvas.getPixel(x, y) end

---@param x integer
---@param y integer
---@param color integer
function Canvas.setPixel(x, y, color) end

---Fills the picture till/with a color. \
---filltype can be \
---&nbsp;&nbsp;&nbsp;&nbsp;fsSurface: fill till the color (it fills all except this color) \
---&nbsp;&nbsp;&nbsp;&nbsp;fsBorder:  fill this color (it fills only connected pixels of this color)
---@param x integer
---@param y integer
---@param color? integer Optional default brush.Color
---@param filltype? integer Optional default fsSurface
function Canvas.floodFill(x, y, color, filltype) end

---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas.ellipse(x1, y1, x2, y2) end

---Gradient fills a rectangle. Direction can be 0 or 1. 0=Vertical 1=Horizontal
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param startcolor integer
---@param stopcolor integer
---@param direction integer
function Canvas.gradientFill(x1, y1, x2, y2, startcolor, stopcolor, direction) end

---Draws an image from one source to another. Useful in cases of doublebuffering.
---@param dest_x1 integer
---@param dest_y1 integer
---@param dest_x2 integer
---@param dest_y2 integer
---@param sourceCanvas Canvas
---@param source_x1 integer
---@param source_y1 integer
---@param source_x2 integer
---@param source_y2 integer
function Canvas.copyRect(dest_x1, dest_y1, dest_x2, dest_y2, sourceCanvas, source_x1, source_y1, source_x2, source_y2) end

---Draw the image of a specific Graphic class
---@param x integer
---@param y integer
---@param graphic Graphic
function Canvas.draw(x, y, graphic) end

---Draw the image of a specific Graphic class and stretch it so it fits in the given rectangle
---@param rect TRect
---@param graphic Graphic
function Canvas.stretchDraw(rect, graphic) end

---Returns a table containing the fields Left, Top, Right and Bottom, which define the invalidated region of the graphical object. Use this to only render what needs to be rendered in the onPaint event of objects.
---@return TRect
function Canvas.getClipRect() end
