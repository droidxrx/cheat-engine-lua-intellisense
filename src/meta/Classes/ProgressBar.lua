---@meta

---@class ProgressBar : WinControl
---@field Min integer The minimum positionvalue the progressbar can have (default 0)
---@field Max integer The maximum positionvalue the progressbar can have (default 100
---@field Position integer The position of the progressbar
---@field Step integer The stepsize to step by when stepIt() is called
ProgressBar = {}

---Increase position with "Step" size
function ProgressBar.stepIt() end

---increase the position by the given integer value
---@param integer integer
function ProgressBar.stepBy(integer) end

---returns the Max property
---@return integer
function ProgressBar.getMax() end

---sets the max property
---@param integer integer
function ProgressBar.setMax(integer) end

---returns the min property
---@return integer
function ProgressBar.getMin() end

---sets the min property
---@param integer integer
function ProgressBar.setMin(integer) end

---returns the current position
---@return integer
function ProgressBar.getPosition() end

---sets the current position
---@param integer integer
function ProgressBar.setPosition(integer) end

---sets the current position; without slow progress animation on Win7 and later
---@param integer integer
function ProgressBar.setPosition2(integer) end

---Creates a ProgressBar class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return ProgressBar
function createProgressBar(owner) end
