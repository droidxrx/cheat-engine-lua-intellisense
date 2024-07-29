---@meta

---The memoryrecord hotkey class is mainly readonly with the exception of the event properties to be used to automatically create trainers \
---Use the generic hotkey class if you wish to create your own hotkeys
---@class MemoryRecordHotkey : Object
---@field Owner MemoryRecord The memoryrecord this hotkey belongs to (ReadOnly)
---@field Keys integer[] Table containing the keys(combination) for this hotkey
---The action that should happen when this hotkey triggers \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhToggleActivation(0): Toggles between active/deactive \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhToggleActivationAllowIncrease(1): Toggles between active/deactive. Allows increase when active \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhToggleActivationAllowDecrease(2): Toggles between active/deactive. Allows decrease when active \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhActivate(3): Sets the state to active \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhDeactivate(4): Sets the state to deactive \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhSetValue(5): Sets a specific value to the value properyy (see value) \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhIncreaseValue(6): Increases the current value with the value property (see value) \
---&nbsp;&nbsp;&nbsp;&nbsp;mrhDecreaseValue(7): Decreases the current value with the value property (see value)
---@field action integer
---@field value string Value used depending on what kind of hotkey is used
---@field ID integer Unique id of this hotkey (ReadOnly)
---@field Active boolean True if it's hotkey will be handled, false if this hotkey is ignored
---@field Description string The description of this hotkey
---@field HotkeyString string The hotkey formatted as a string (ReadOnly)
---@field ActivateSound string Tablefile name of a WAV file inside the table which will get played on activate events
---@field DeactivateSound string Tablefile name of a .WAV file inside the table which will get played on deactivate events
MemoryRecordHotkey = {}

---Function to be called when a hotkey has just been pressed
---@param sender any
MemoryRecordHotkey.OnHotkey = function(sender) end

---Function to be called when a hotkey has been pressed and the action has been performed
---@param sender any
MemoryRecordHotkey.OnPostHotkey = function(sender) end

---Executes the hotkey as if it got triggered by the keyboard
function MemoryRecordHotkey.doHotkey() end
