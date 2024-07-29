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
---@alias CEAddressString string

---@alias float integer

---@alias AlignmentOption integer

---@alias PixelFormat integer

---These are declared globally and their type() is of number. \
---They act like an enum object for the Duplicates property.
---```
---0 : dupIgnore
---1 : dupAccept
---2 : dupError
---```
---@alias DuplicatesType integer

---@class AddressList : Addresslist
AddressList = {}

---@class (exact) MainForm : Form
---@field btnSetSpeedhack2 Button
---@field btnAddAddressManually Button
---@field btnMemoryView Button
---@field cbCaseSensitive CheckBox
---@field cbCopyOnWrite CheckBox
---@field cbExecutable CheckBox
---@field cbFastScan CheckBox
---@field cbFloatSimple CheckBox
---@field cbHexadecimal CheckBox
---@field cbPauseWhileScanning CheckBox
---@field cbSpeedhack CheckBox
---@field cbUnicode CheckBox
---@field cbUnrandomizer CheckBox
---@field cbWritable CheckBox
---@field cbpercentage CheckBox
---@field cbNot CheckBox
---@field cbCodePage CheckBox
---@field cbRepeatUntilStopped CheckBox
---@field cbCompareToSavedScan CheckBox
---@field cbLuaFormula CheckBox
---@field cbNewLuaState CheckBox
---@field cbPresentMemoryOnly CheckBox
---@field ColorDialog1 ColorDialog
---@field CreateGroup MenuItem
---@field FromAddress Edit
---@field andlabel Label
---@field lblcompareToSavedScan Label
---@field miTestAccessViolationThread MenuItem
---@field miTriggerAccessViolation MenuItem
---@field MenuItem16 MenuItem
---@field MenuItem17 MenuItem
---@field MenuItem18 MenuItem
---@field miClearWorkingSet MenuItem
---@field miNetworkReadUseProcMem MenuItem
---@field miNetworkReadUsePtrace MenuItem
---@field miNetworkReadUseVmread MenuItem
---@field miNetworkWriteUseProcMem MenuItem
---@field miNetworkWriteUsePtrace MenuItem
---@field miNetworkWriteUseVmWrite MenuItem
---@field miDeleteSavedScanResults MenuItem
---@field miOnlyShowCurrentCompareToColumn MenuItem
---@field miLoadRecent MenuItem
---@field miAlwaysHideChildren MenuItem
---@field miFoundListPreferences MenuItem
---@field N2 MenuItem
---@field mfImageList ImageList
---@field lblSigned Label
---@field MainMenu2 MainMenu
---@field miTutorial64 MenuItem
---@field MenuItem14 MenuItem
---@field MenuItem15 MenuItem
---@field Copyselectedaddresses1 MenuItem
---@field miAutoAssembleErrorMessage MenuItem
---@field miLuaDocumentation MenuItem
---@field miForgotScan MenuItem
---@field miDotNET MenuItem
---@field miGetDotNetObjectList MenuItem
---@field miDBVMFindWhatWritesOrAccesses MenuItem
---@field pmPresentMemoryOnly PopupMenu
---@field sep2 MenuItem
---@field miChangeValueBack MenuItem
---@field miSignTable MenuItem
---@field miSaveFile MenuItem
---@field miAsyncScript MenuItem
---@field miFlFindWhatAccesses MenuItem
---@field MenuItem13 MenuItem
---@field miFlFindWhatWrites MenuItem
---@field miLanguages MenuItem
---@field ScanText2 Label
---@field scanvalue2 Edit
---@field tLuaGCPassive Timer
---@field tLuaGCActive Timer
---@field ToAddress Edit
---@field editSH2 Edit
---@field edtAlignment Edit
---@field Foundlist3 ListView
---@field ImageList2 ImageList
---@field Label1 Label
---@field Label2 Label
---@field Label54 Label
---@field lblSH0 Label
---@field lblSH20 Label
---@field MenuItem1 MenuItem
---@field MenuItem10 MenuItem
---@field MenuItem11 MenuItem
---@field miEnableLCLDebug MenuItem
---@field miDisassemble MenuItem
---@field miBindDeactivation MenuItem
---@field miScanDirtyOnly MenuItem
---@field miScanPagedOnly MenuItem
---@field miGeneratePointermap MenuItem
---@field miDisplayHex MenuItem
---@field miNetwork MenuItem
---@field miCompression MenuItem
---@field miManualExpandCollapse MenuItem
---@field miSetDropdownOptions MenuItem
---@field miSave MenuItem
---@field miSnapshothandler MenuItem
---@field miSetupSnapshotKeys MenuItem
---@field miDisplayDefault MenuItem
---@field miDisplayByte MenuItem
---@field miDisplay2Byte MenuItem
---@field miDisplay4Byte MenuItem
---@field miDisplayFloat MenuItem
---@field miDisplayDouble MenuItem
---@field miDisplay8Byte MenuItem
---@field MenuItem19 MenuItem
---@field miShowPreviousValue MenuItem
---@field MenuItem4 MenuItem
---@field miShowCustomTypeDebug MenuItem
---@field miShowAsSigned MenuItem
---@field miOpenFile MenuItem
---@field MenuItem8 MenuItem
---@field miTutorial MenuItem
---@field miLockMouseInGame MenuItem
---@field miChangeValue MenuItem
---@field miAddAddress MenuItem
---@field miAllowCollapse MenuItem
---@field miSetCrosshair MenuItem
---@field miWireframe MenuItem
---@field miZbuffer MenuItem
---@field miHookD3D MenuItem
---@field mi3d MenuItem
---@field miUndoValue MenuItem
---@field miPresetWritable MenuItem
---@field MenuItem2 MenuItem
---@field MenuItem3 MenuItem
---@field miShowLuaScript MenuItem
---@field MenuItem5 MenuItem
---@field miPresetAll MenuItem
---@field miAddFile MenuItem
---@field MenuItem9 MenuItem
---@field miResyncFormsWithLua MenuItem
---@field miCreateLuaForm MenuItem
---@field miLuaFormsSeperator MenuItem
---@field miTable MenuItem
---@field miSaveScanresults MenuItem
---@field MenuItem6 MenuItem
---@field MenuItem7 MenuItem
---@field miShowAsBinary MenuItem
---@field miZeroTerminate MenuItem
---@field miResetRange MenuItem
---@field miChangeColor MenuItem
---@field miGroupconfig MenuItem
---@field miDefineNewCustomTypeLua MenuItem
---@field miDeleteCustomType MenuItem
---@field miHideChildren MenuItem
---@field miBindActivation MenuItem
---@field miRecursiveSetValue MenuItem
---@field miDefineNewCustomType MenuItem
---@field miEditCustomType MenuItem
---@field miRenameTab MenuItem
---@field miTablistSeperator MenuItem
---@field miCloseTab MenuItem
---@field miAddTab MenuItem
---@field miFreezePositive MenuItem
---@field miFreezeNegative MenuItem
---@field Panel1 Panel
---@field Panel10 Panel
---@field Panel14 Panel
---@field Panel2 Panel
---@field Panel3 Panel
---@field Panel6 Panel
---@field Panel8 Panel
---@field Panel9 Panel
---@field pnlFloat Panel
---@field pnlScanOptions Panel
---@field pnlScanValueOptions Panel
---@field pmTablist PopupMenu
---@field pmValueType PopupMenu
---@field pmResetRange PopupMenu
---@field pmScanRegion PopupMenu
---@field tbSpeed TrackBar
---@field UpdateTimer Timer
---@field FreezeTimer Timer
---@field PopupMenu2 PopupMenu
---@field Deletethisrecord1 MenuItem
---@field Browsethismemoryregion1 MenuItem
---@field Calculatenewvaluepart21 MenuItem
---@field Freezealladdresses2 MenuItem
---@field sep1 MenuItem
---@field N1 MenuItem
---@field N4 MenuItem
---@field Copy1 MenuItem
---@field Paste1 MenuItem
---@field Cut1 MenuItem
---@field Setbreakpoint1 MenuItem
---@field SetHotkey1 MenuItem
---@field N5 MenuItem
---@field Panel4 Panel
---@field Panel5 Panel
---@field ProcessLabel Label
---@field foundcountlabel Label
---@field ScanText Label
---@field lblScanType Label
---@field lblValueType Label
---@field Label6 Label
---@field gbScanOptions GroupBox
---@field btnNewScan Button
---@field btnNextScan Button
---@field ScanType ComboBox
---@field VarType ComboBox
---@field ProgressBar ProgressBar
---@field UndoScan Button
---@field scanvalue Edit
---@field foundlistpopup PopupMenu
---@field Browsethismemoryarrea1 MenuItem
---@field Removeselectedaddresses1 MenuItem
---@field Selectallitems1 MenuItem
---@field OpenDialog1 OpenDialog
---@field SaveDialog1 SaveDialog
---@field TopDisabler Timer
---@field emptypopup PopupMenu
---@field ccpmenu PopupMenu
---@field Cut2 MenuItem
---@field Copy2 MenuItem
---@field Paste2 MenuItem
---@field Splitter1 Splitter
---@field Findoutwhataccessesthisaddress1 MenuItem
---@field Showashexadecimal1 MenuItem
---@field Panel7 Panel
---@field Change1 MenuItem
---@field Description1 MenuItem
---@field Address1 MenuItem
---@field Type1 MenuItem
---@field Value1 MenuItem
---@field Changescript1 MenuItem
---@field Forcerechecksymbols1 MenuItem
---@field Smarteditaddresses1 MenuItem
---@field Pointerscanforthisaddress1 MenuItem
---@field Plugins1 MenuItem
---@field UpdateFoundlisttimer Timer
---@field Browsethismemoryregioninthedisassembler1 MenuItem
---@field AutoAttachTimer Timer
---@field btnFirst Button
---@field btnNext Button
---@field LogoPanel Panel
---@field Logo Image
---@field MainMenu1 MainMenu
---@field File1 MenuItem
---@field Process1 MenuItem
---@field miHelp MenuItem
---@field Edit3 MenuItem
---@field miAbout MenuItem
---@field OpenProcess1 MenuItem
---@field Save1 MenuItem
---@field Load1 MenuItem
---@field Settings1 MenuItem
---@field N6 MenuItem
---@field a1 MenuItem
---@field b1 MenuItem
---@field c1 MenuItem
---@field d1 MenuItem
---@field e1 MenuItem
---@field CreateProcess1 MenuItem
---@field New1 MenuItem
---@field N7 MenuItem
---@field ools1 MenuItem
---@field N8 MenuItem
---@field Helpindex1 MenuItem
---@field Plugins2 MenuItem
MainForm = {}

---@class TRect
---@field Left integer
---@field Top integer
---@field Right integer
---@field Bottom integer

---@return float #Returns a floating point value specifying the version of cheat engine
function getCEVersion() end

---@return integer #Returns the full version data of the cheat engine version. A raw integer, and a table containing major, minor, release and build
function getCheatEngineFileVersion() end

---@return integer #Returns 0 if CE is running in Windows, 1 for Mac
function getOperatingSystem() end

---@return boolean #Returns true if CE is running in windows Dark Mode. Has no effect on mac
function darkMode() end

---Prevents basic memory scanners from opening the cheat engine process.
function activateProtection() end

---Prevents normal memory scanners from reading the Cheat Engine process (kernel mode).
---@param altitude? any Optional
---@param secondaryprocessid? integer Optional
function enableDRM(altitude, secondaryprocessid) end

---Changes the protection of a block of memory to writable and executable
---@param address integer
---@param size integer
function fullAccess(address, size) end

---Sets the given protection on the address range. Note, some systems do not support X and W to be true at the same time
---@param address integer
---@param size integer
---@param prot { R:boolean, W: boolean, X: boolean }
function setMemoryProtection(address, size, prot) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param fileName string The name of the file to be added to the cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
function loadTable(fileName, merge) end

---Loads a ".CT" or ".CETRAINER". If merge is provided and set to true it will not clear the old table.
---@param memoryStream MemoryStream The memory stream to load as a cheat table
---@param merge? boolean If set to true it will merge to current table with the loaded table and not clear the old table.
---@param ignoreLuaScriptDialog boolean
function loadTable(memoryStream, merge, ignoreLuaScriptDialog) end

---Saves the current table. If protect is provided and set to true and the filename has the .CETRAINER extension, it will protect it from reading normally
---@param fileName string
---@param protect? boolean
---@param dontDeactivateDesignerForms? boolean
function saveTable(fileName, protect, dontDeactivateDesignerForms) end

---Saves the current table to a stream object
---@param stream Stream
---@param dontDeactivateDesignerForms? boolean
function saveTable(stream, dontDeactivateDesignerForms) end

---If the current CE install has a valid cheta engine signature, this will sign the specific table with that signature (will pop up the password request)
---@param filename string
function signTable(filename) end

---Copies memory from the given address to the destination address \
---If no destinationAddress is given(or nil), CE will allocate a random address for you \
---Method can be: \
---&nbsp;&nbsp;&nbsp;&nbsp;nil/0: Copy from target process to target process \
---&nbsp;&nbsp;&nbsp;&nbsp;1: Copy from target process to CE Memory \
---&nbsp;&nbsp;&nbsp;&nbsp;2: Copy from CE Memory to target process \
---&nbsp;&nbsp;&nbsp;&nbsp;3: Copy from CE Memory to CE Memory
---@param sourceAddress integer
---@param size integer
---@param destinationAddress? integer SEMIOPTIONAL
---@param Method? integer
---@return integer|nil #Returns the address of the copy on success, nil on failure
function copyMemory(sourceAddress, size, destinationAddress, Method) end

---Compares the memory \
---Method can be: \
---&nbsp;&nbsp;&nbsp;&nbsp;0: Target to Target \
---&nbsp;&nbsp;&nbsp;&nbsp;1: Address1=Target Address2=CE \
---&nbsp;&nbsp;&nbsp;&nbsp;2: Address1=CE Address2=CE
---@param address1 integer
---@param address2 integer
---@param size integer
---@param method integer
---@return boolean #Returns true if the same or false and and index where the first disparity is
function compareMemory(address1, address2, size, method) end

---@class MemoryRegions
---@field Protect integer
---@field AllocationBase integer
---@field State integer
---@field RegionSize integer
---@field AllocationProtect integer
---@field BaseAddress integer
---@field Type integer

---Returns an indexed table containing the memorylayout
---@return MemoryRegions[]
function enumMemoryRegions() end

---Writes a specified block of memory to a file. Useful for extracting specific files from memory. Like a decoded .SWF, or a image, or whatever you might want to look up.
---@param Filename string The filename to save the memoryblock to
---@param Address CEAddressString | integer The address of the block to save
---@param Size integer The number of bytes to save.
function writeRegionToFile(Filename, Address, Size) end

---Reads a file from memory and writes the contents of that file to the specified address
---@param Filename string The filename to load into memory
---@param Address CEAddressString | integer The address to write the block of data to
function readRegionFromFile(Filename, Address) end

---This will create a new lua state that will be used. (Does not destroy the old one, so memory leak)
function resetLuaState() end

---Returns the given variable from the main lua state. Only basic types are supported.  (Handy for new lua state threads)
---@param value string
---@return any
function getGlobalVariable(value) end

---Sets the global variable names string in the main lua state.  Only basic types are supported
---@param value string
---@param something any
function setGlobalVariable(value, something) end

---Returns an integer reference that you can use with getRef. \
---Useful for objects that can only store integers and need to reference lua objects.  (Component.Tag...)
---@param ... any
---@return integer
function createRef(...) end

---Returns whatever the reference points out
---@param integer integer
---@return any
function getRef(integer) end

---Removes the reference
---@param integer integer
function destroyRef(integer) end

---Converts a given function into an encoded string that you can pass on to `decodeFunction`
---@param function_ function The function to encode
---@return string
function encodeFunction(function_) end

---Converts a given string converted by `encodeFunction` back into function.
---@param encodedString string The string to decode into a function
---@return function
function decodeFunction(encodedString) end

---See encodeFunction but uses a script instead of a function, and lets you specify which lua dll to use (Note: Still can't use 32-bit dll's in 64-bit and vice versa)
---@param string string
---@param pathtodll? string
function encodeFunctionEx(string, pathtodll) end

---Returns the path of the current translation files. Empty if there is no translation going on
---@return string
function getTranslationFolder() end

---Loads a .PO file used for translation
---@param path string
function loadPOFile(path) end

---Returns a translation of the string. Returns the same string if it can't be found
---@param value string
---@return string
function translate(value) end

---Returns a translation of the string id
---@param translationid string
---@param originalstring? string
---@return string
function translateID(translationid, originalstring) end

---Conversts a given string/bytearray into a utf8 converted from the given codepage number
---@param stringorbytetable string|integer[]
---@param originalcodepagenumber integer
---@return string
function convertToUTF8(stringorbytetable, originalcodepagenumber) end

---Converts a string in Ansi encoding to UTF8
---@param value string
---@return string
function ansiToUTF8(value) end

---Converts a string in UTF8 encoding to Ansi
---@param value string
---@return string
function UTF8ToAnsi(value) end

---Returns a table containing information about each module in the current process, or the specified process id Each entry is a table with fields.
---@param ProcessID integer The process id to use insted of current process
---@return {Name: string,Address:integer,Is64Bit:boolean,PathToFile:string}[]
function enumModules(ProcessID) end

---Returns a md5 sum calculated from the provided memory.
---@param address integer
---@param size integer
---@return string
function md5memory(address, size) end

---Returns a md5 sum calculated from the file.
---@param pathtofile string
---@return string
function md5file(pathtofile) end

---returns the 64-bit file version, and a table that has split up the file version into major, minor, release and build
---@param pathtofile string
---@return string
function getFileVersion(pathtofile) end

---shows a messagebox with the given text
---@param text string
function showMessage(text) end

---Shows a dialog where the user can input a string. This function returns the given string, or nil on cancel
---@param caption string
---@param prompt string
---@param initialstring string
---@return string|nil
function inputQuery(caption, prompt, initialstring) end

---Shows a menu with the given list. It returns the linenumber (starting at 0) and the selected string.  Linenumber is -1 if the user was allowed to enter custom input
---@param title string
---@param caption string
---@param stringlist StringList
---@param allowCustomInput? boolean
---@param formname? any
---@return integer,string
function showSelectionList(title, caption, stringlist, allowCustomInput, formname) end

---pops up a messagebox with a specific icon/sound with the specified buttons (mbok, mbyes, ....)
---@param text string
---@param type integer
---@param ... integer buttons
---@return integer
function messageDialog(text, type, ...) end

---^ but adds a custom title
---@param title string
---@param text integer
---@param type integer
---@param ... integer buttons
---@return integer
function messageDialog(title, text, type, ...) end

---shows an information dialog with the text
---@param text any
---@return integer
function messageDialog(text) end

---Writes the given text to the clipboard
---@param text string
function writeToClipboard(text) end

---Reads the text from the clipboard
---@return string
function readFromClipboard() end
