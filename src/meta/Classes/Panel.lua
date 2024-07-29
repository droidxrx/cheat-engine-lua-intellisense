---@meta

---@class Panel : CustomControl
---@field Alignment string
---@field BevelInner string
---@field BevelOuter string
---@field BevelWidth integer
---@field FullRepaint boolean
Panel = {}

---gets the alignment property
function Panel.getAlignment() end

---sets the alignment property
function Panel.setAlignment(alignment) end

---@return string
function Panel.getBevelInner() end

---@param PanelBevel string
function Panel.setBevelInner(PanelBevel) end

---@return string
function Panel.getBevelOuter() end

---@param PanelBevel string
function Panel.setBevelOuter(PanelBevel) end

---@return integer
function Panel.getBevelWidth() end

---@param BevelWidth integer
function Panel.setBevelWidth(BevelWidth) end

---@return boolean
function Panel.getFullRepaint() end

---@param boolean boolean
function Panel.setFullRepaint(boolean) end
