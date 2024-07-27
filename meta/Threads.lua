---@meta

---Returns the number of CPU's.
---@return integer
function getCPUCount() end

---Fills a StringList object with the threadlist of the currently opened process. \
---Examples:
---```
---local l = createStringlist()
---getThreadlist(l)
---for i = 1, l.Count do
---    print(l[i - 1])
---end
---```
---@param StringList StringList The StringList to fill
function getThreadlist(StringList) end
