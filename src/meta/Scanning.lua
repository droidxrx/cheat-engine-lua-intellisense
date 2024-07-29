---@meta

---Scans the currently opened process and returns a StringList object containing all the results. Don't forget to free this list when done. Byte value of higher than 255 or anything not an integer will be seen as a wildcard.
---@param ... integer Bytes to scan for seperated as arguments
---@return StringList
function AOBScan(...) end

---Scans the currently opened process and returns a StringList object containing all the results. Don't forget to free this list when done. Byte value of higher than 255 or anything not an integer will be seen as a wildcard.\
---Parameter `protectionflags` is an string:
---```
-----Add a + to indicate that flag MUST be set and a - to indicate that that flag MUST NOT be set. (* sets it to don't care)
---X -- Executable
---W -- Writable memory
---C -- Copy On Write
---```
---Parameter `alignmenttype` is an integer:
---```
---0 -- No alignment check
---1 -- Address must be dividable by alignmentparam
---2 -- Address must end with alignmentparam
---```
---@param AOBString string A string of bytes, as hex, to scan for
---@param ProtectionFlags? string A string of flags used to set protection type of memory to be scanned
---@param AlignmentType? integer Used with 'AlignmentParam' to set scan alignment
---@param AlignmentParam? string A string which either holds the value the addresses must be dividable by or what the last digits of the address must be
---@return StringList
function AOBScan(AOBString, ProtectionFlags, AlignmentType, AlignmentParam) end
