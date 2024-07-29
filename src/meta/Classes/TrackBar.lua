---@meta

---@class TrackBar : WinControl
---@field Min integer Minimal value for the trackbar
---@field Max integer Maximum value for the trackbar
---@field Position integer The current position
---@field OnChange fun(...: any) Function to call when
TrackBar = {}

---@return integer
function TrackBar.getMax() end

---@param integer integer
function TrackBar.setMax(integer) end

---@return integer
function TrackBar.getMin(trackbar) end

---@param trackbar any
---@param integer integer
function TrackBar.setMin(trackbar, integer) end

---@return integer
function TrackBar.getPosition(progressbar) end

---@param progressbar any
---@param integer integer
function TrackBar.setPosition(progressbar, integer) end

---@return fun(...: any)
function TrackBar.getOnChange() end

---@param fun fun(...: any)
function TrackBar.setOnChange(fun) end
