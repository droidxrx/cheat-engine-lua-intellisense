---@meta

---@class Timer : Component
---@field Interval integer The number of milliseconds (1000=1 second) between executions
---@field Enabled boolean
---@field OnTimer fun(timer) The function to call when the timer triggers
Timer = {}

---@return integer
function Timer.getInterval() end

---Sets the speed on how often the timer should trigger. In milliseconds (1000=1 second)
---@param interval integer
function Timer.setInterval(interval) end

---@return fun(timer)
function Timer.getOnTimer() end

---@param fun fun(timer)
function Timer.setOnTimer(fun) end

---@return boolean
function Timer.getEnabled() end

---@param boolean boolean
function Timer.setEnabled(boolean) end
