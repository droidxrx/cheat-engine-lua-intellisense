---@meta

---Returns 2 parameters. The x-pos and the y-pos of the mouse on the screen. \
---Example:
---```
---x,y = getMousePos()
---```
---@return integer x
---@return integer y
function getMousePos() end

---Sets the mouse cursor to the specified coordinates.
---@param x integer The x coordinate to set the mouse cursor to
---@param y integer The y coordinate to set the mouse cursor to
function setMousePos(x, y) end

---Returns true if the given keycode is valid and pressed down. \
---Example:
---```
---local isPressed = isKeyPressed(VK_HOME)
---```
---@param key integer The keycode for the key to test
---@return boolean
function isKeyPressed(key) end

---Sets the key to the down state. Toggling between down and up can be used to type strings. And holding down can also be used to drag stuff. (Like the left mouse button down)
---@param key integer The keycode for the key to set down
function keyDown(key) end

---Sets the key to the up state
---@param key integer The keycode for the key to set up
function keyUp(key) end

---Simulates a keypress (up/down) \
---Tip: To differentiate between highercase and lowercase set the shift key down or up depending on what you wish
---@param key integer The keycode for the key to emulated
function doKeyPress(key) end
