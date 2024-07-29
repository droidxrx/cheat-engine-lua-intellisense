---@meta

---@class FindDialog : CommonDialog
---@field Top integer
---@field Left integer
---@field Width integer
---@field Height integer
---@field FindTexts string The text the user wishes to find
---Find Options:
---```
---{ frDown, frFindNext, frHideMatchCase, frHideWholeWord,
---  frHideUpDown, frMatchCase, frDisableMatchCase, frDisableUpDown,
---  frDisableWholeWord, frReplace, frReplaceAll, frWholeWord, frShowHelp,
---  frEntireScope, frHideEntireScope, frPromptOnReplace, frHidePromptOnReplace
---}
---```
---@field Options string
---@field OnFind fun(sender) Called when the find button has been clicked
---@field OnHelp fun(sender) Called when the help button is visible (see Options) and clicked

---@param owner any
---@return FindDialog
function createFindDialog(owner) end
