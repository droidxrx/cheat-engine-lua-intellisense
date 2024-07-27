---@meta

---A "CEAddressString" is a string formatted for use by Cheat Engine's internal symbol handler to interpret an address \
---These addresses do not start with a 0x in front but do support basic math. Example: "00400500+12" \
---Pointers are written between [ and ]. Example: [[game.exe+1234]+12]+8 for a pointer that is written as: \
---```
---8
---12
---game.exe+1234
---```
---The address specifier can also be a global lua symbol, but then it can only be the lua symbol. You do that by starting the CEAddressString with a '$'-sign. Example: $MyGlobalsymbol \
---If an entry on the cheat table is nested under another entry, its address can begin with a "+", and will be interpreted as an offset to that parent entry. For example, if the parent entry is at the address "00400500+12", then the child entry with the address "+1" would resolve to "00400500+12+1".
---@class CEAddressString: string

---@class float: integer

---@class AlignmentOption: integer

---@class ModalResult: integer

---@class PixelFormat: integer

---@class checkboxstate : integer
