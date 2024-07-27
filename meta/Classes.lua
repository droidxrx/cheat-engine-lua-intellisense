---@meta

---@class Addresslist : Object
---Class for manipulating the Cheat Engine form's address list
Addresslist = {
    ---The number of records in the table
    ---@type integer
    Count                        = nil,
    ---The number of records that are selected
    ---@type integer
    SelCount                     = nil,
    ---The main selected record
    ---@type MemoryRecord
    SelectedRecord               = nil,
    ---Array to access the individual memory records
    ---@type MemoryRecord[]
    MemoryRecord                 = nil,
    ---Returns the number of memory records in the address list
    ---@return integer
    getCount                     = function() end,
    ---returns a `MemoryRecord` object based on it's index
    ---@param index integer
    ---@return MemoryRecord
    getMemoryRecord              = function(index) end,
    ---returns a `MemoryRecord` object based on it's description
    ---@param description string
    ---@return MemoryRecord
    getMemoryRecordByDescription = function(description) end,
    ---returns a `MemoryRecord` object based on it's ID
    ---@param ID integer
    ---@return MemoryRecord
    getMemoryRecordByID          = function(ID) end,
    ---creates an generic cheat table entry and add it to the list
    ---@return MemoryRecord
    createMemoryRecord           = function() end,
    ---Returns a table containing all the selected records
    ---@return MemoryRecord
    getSelectedRecords           = function() end,
    ---Will show the GUI window to change the description of the selected entry
    doDescriptionChange          = function() end,
    ---Will show the GUI window to change the address of the selected entry
    doAddressChange              = function() end,
    ---Will show the GUI window to change the type of the selected entries
    doTypeChange                 = function() end,
    ---Will show the GUI window to change the value of the selected entries
    doValueChange                = function() end,
    ---Gets the main selected memory record
    ---@return MemoryRecord
    getSelectedRecord            = function() end,
    ---Sets the currently selected memory record. This will unselect all other entries
    ---@param memrec MemoryRecord
    setSelectedRecord            = function(memrec) end,
}

---Returns an initialized GenericHotkey class object. Maximum of 5 keys
---@param function_ function
---@param keys integer
---@param ... integer
---@return function
function createHotkey(function_, keys, ...) end

---Initializes a hotkey with a maximum of 5 keys
---@param function_ function
---@param keys integer[]
---@return function
function createHotkey(function_, keys) end

---@class GenericHotkey : Object
---The generic hotkey class returns an object that can manage up to 5 hotkeys
GenericHotkey = {
    ---Interval in milliseconds that determines the minimum time between hotkey activations. If set to 0, the global delay is used
    ---@type integer
    DelayBetweenActivate = nil,
    ---The function to call when the hotkey is pressed
    ---@type unknown
    onHotKey             = nil,
    ---@return number[]
    getKeys              = function() end,
    ---@param key number
    ---@param ... number
    setKeys              = function(key, ...) end,
    setOnHotkey          = function(table) end,
    ---@return unknown
    getOnHotkey          = function() end,
}

---@class MemoryRecord : Object
---The memory record objects are the entries you see in the address list
MemoryRecord = {
    ---Unique ID
    ---@type integer
    ID                        = nil,
    ---The index ID for this record. 0 is top. (ReadOnly)
    ---@type integer
    Index                     = nil,
    ---The description of the memory record
    ---@type string
    Description               = nil,
    ---Get/set the interpretable address string. Useful for simple address settings
    ---@type string
    Address                   = nil,
    ---The number of offsets. Set to 0 for a normal address
    ---@type integer
    OffsetCount               = nil,
    ---Array to access each offset
    ---@type integer[]
    Offset                    = nil,
    ---The address the memoryrecord points to
    ---@type integer
    CurrentAddress            = nil,
    ---The variable type of this record. See vtByte to vtCustom
    ---@type integer
    Type                      = nil,
    ---If the type is vtCustomType this will contain the name of the CustomType
    ---@type string
    CustomTypeName            = nil,
    ---If the type is vtAutoAssembler this will contain the auto assembler script
    ---@type string
    Script                    = nil,
    ---The value in stringform
    ---@type string
    Value                     = nil,
    ---Set to true to change the memory record into a group header. All properties and functions related to address, type, and value are ignored when true.
    ---@type boolean
    IsGroupHeader             = nil,
    ---Set to true if selected (ReadOnly)
    ---@type boolean
    Selected                  = nil,
    ---Set to true to activate/freeze, false to deactivate/unfreeze
    ---@type boolean
    Active                    = nil,
    ---The memory record's RGB color integer.
    ---@type boolean
    Color                     = nil,
    ---Self explanatory
    ---@type boolean
    ShowAsHex                 = nil,
    ---Self explanatory
    ---@type boolean
    ShowAsSigned              = nil,
    ---Allow value increasing, unfreeze will reset it to false
    ---@type boolean
    AllowIncrease             = nil,
    ---Allow value decreasing, unfreeze will reset it to false
    ---@type boolean
    AllowDecrease             = nil,
    ---Number of children
    ---@type integer
    Count                     = nil,
    ---Array to access the child records
    ---@type MemoryRecord[]
    Child                     = nil,
    ---Number of hotkeys attached to this memory record
    ---@type integer
    HotkeyCount               = nil,
    ---Array to index the hotkeys
    ---@type GenericHotkey[]
    Hotkey                    = nil,
    ---A string of the set "Group Config" options in the format `[optionName,...]`, Valid options are:
    ---```
    ---moHideChildren
    ---moActivateChildrenAsWell
    ---moDeactivateChildrenAsWell
    ---moRecursiveSetValue
    ---moAllowManualCollapseAndExpand
    ---moManualExpandCollapse
    ---```
    ---example: `[moHideChildren,moAllowManualCollapseAndExpand,moManualExpandCollapse]`
    ---@type string
    Options                   = nil,
    ---only works when manual expand/collapse is set in group config options (moManualExpandCollapse)
    ---@type boolean
    Collapsed                 = nil,
    ---The function to call when the memoryrecord will change (or changed) Active to true. \
    ---If before is true, not returning true will cause the activation to stop.
    ---@param memoryrecord MemoryRecord
    ---@param before boolean
    ---@param currentstate boolean
    ---@return boolean
    OnActivate                = function(memoryrecord, before, currentstate) end,
    ---The function to call when the memoryrecord will change (or changed) Active to false. \
    ---If before is true, not returning true will cause the deactivation to stop.
    ---@param memoryrecord MemoryRecord
    ---@param before boolean
    ---@param currentstate boolean
    ---@return boolean
    OnDeactivate              = function(memoryrecord, before, currentstate) end,
    ---Called when the memoryrecord is destroyed.
    ---@type function
    OnDestroy                 = nil,
    ---Don't save this memoryrecord and it's children
    ---@type boolean
    DontSave                  = nil,
    ---if dropdown list refers to list of another memory record eg. (memrec name)
    ---@type boolean
    DropDownLinked            = nil,
    ---Description of linked memrec or emptystring if not linked
    ---@type boolean
    DropDownLinkedMemrec      = nil,
    ---list of "value:description" lines, lists are still separate objects when linked, read-write
    ---@type StringList
    DropDownList              = nil,
    ---true if 'Disallow manual user input' is set
    ---@type boolean
    DropDownReadOnly          = nil,
    ---self explanatory
    ---@type boolean
    DropDownDescriptionOnly   = nil,
    ---self explanatory
    ---@type boolean
    DisplayAsDropDownListItem = nil,
    ---equivalent to .DropDownList.Count
    ---@type integer
    DropDownCount             = nil,
    ---Array to access values in DropDownList (ReadOnly)
    ---@type table
    DropDownValue             = nil,
    ---Array to access Descriptions in DropDownList (ReadOnly)
    ---@type table
    DropDownDescription       = nil,
    ---Returns the memory record's description
    ---@return string
    getDescription            = function() end,
    ---Sets the memory record's description
    ---@param Description string
    setDescription            = function(Description) end,
    ---Returns the interpretable addressstring of this record. \
    ---If it is a pointer, it returns a second result as a table filled with the offsets
    ---@return integer
    getAddress                = function() end,
    ---Sets the interpretable address string, and if offsets are provided make it a pointer
    ---@param Address string
    setAddress                = function(Address) end,
    ---Returns the number of offsets for this memoryrecord
    ---@return integer
    getOffsetCount            = function() end,
    ---Lets you set the number of offsets
    ---@param int integer
    setOffsetCount            = function(int) end,
    ---Gets the offset at the given index
    ---@param Index integer
    ---@return integer
    getOffset                 = function(Index) end,
    ---Sets the offset at the given index
    ---@param Index integer
    ---@param Value integer
    setOffset                 = function(Index, Value) end,
    ---Returns the current address as an integer (the final result of the interpretable address and pointer offsets)
    ---@return integer
    getCurrentAddress         = function() end,
    ---Appends the current memory record to the given memory record
    ---@param memrec MemoryRecord
    appendToEntry             = function(memrec) end,
    ---Returns the hotkey from the hotkey array
    ---@param Index integer
    ---@return GenericHotkey
    getHotkey                 = function(Index) end,
    ---Returns the hotkey with the given id
    ---@param Id integer
    ---@return GenericHotkey
    getHotkeyByID             = function(Id) end
}

---@class MemoryStream : Object
---class for memory stream objects
MemoryStream = {
    ---The address in Cheat Engine's memory this stream is loaded (READONLY, tends to change)
    ---@type integer
    Memory = nil,
    ---Replaces the contents in the memory stream with the contents of a file on disk
    ---@param fileName string
    loadFromFile = function(fileName) end,
    ---Writes the contents of the memory stream to the specified file
    ---@param fileName string
    saveToFile = function(fileName) end
}


---@class Object
---Base class for all objects
Object = {
    ---The name of class.
    ---@type string
    ClassName    = nil,
    ---Returns the class name
    ---@return string
    getClassName = function() end,
    ---Destroys the object
    destroy      = function() end
}

---@class Strings : Object
---Mostly an abstract class.
Strings = {
    ---All the strings as one string.
    ---@type string
    Text = nil,
    ---The number of strings in this list.
    ---@type integer
    Count = nil,
    ---Array to access one specific string in the list.
    ---@type string[]
    String = nil,
    ---Deletes all strings in the list.
    clear = function() end,
    ---Adds a string to the list.
    ---@param String string
    add = function(String) end,
    ---Deletes a string from the list at the index given.
    ---@param Index integer
    delete = function(Index) end,
    ---Returns all the strings as one string
    ---@return string
    getText = function() end,
    ---Sets the strings of the list to the given text (can be multi-line).
    setText = function() end,
    ---Returns the index of the first instance of the specified string. \
    ---Returns -1 if not found.
    ---@return integer
    indexOf = function(String) end,
    ---Inserts a string at a specific spot moving the items after it.
    ---@param Index integer
    ---@param String string
    insert = function(Index, String) end,
    ---Returns the number of strings in the list.
    ---@return integer
    getCount = function() end,
    ---Removes the first instance of the given string from the list.
    ---@param String string
    remove = function(String) end,
    ---Loads the strings from a text file.
    ---@param FileName string
    ---@return boolean
    loadFromFile = function(FileName) end,
    ---Saves the strings to a text file.
    ---@param FileName string
    ---@return boolean
    saveToFile = function(FileName) end,
    ---Gets the string at the given index.
    ---@param Index integer
    ---@return string
    getString = function(Index) end,

    ---Replaces the string at the given index.
    ---@param Index integer
    ---@param String string
    setString = function(Index, String) end
}

---Creates a StringList object.
---@return StringList
function createStringList() end

---These are declared globally and their type() is of number. \
---They act like an enum object for the Duplicates property.
---```
---0 : dupIgnore
---1 : dupAccept
---2 : dupError
---```
---@class DuplicatesType : integer

---@class StringList : Object
---Basically, a wrapper around the Strings class.
StringList = {
    ---Determines how duplicates should be handled. \
    ---Note: Does not seem to work.
    ---@type DuplicatesType
    Duplicates       = nil,
    ---Determines if the list should be sorted.
    ---@type boolean
    Sorted           = nil,
    ---Determines if case sensitivity is considered when sorting the list. \
    ---Note: This has no effect on the actual cases of the actual strings.
    ---@type boolean
    CaseSensitive    = nil,
    ---Returns the Duplicates property.
    ---@return DuplicatesType
    getDuplicates    = function() end,
    ---Sets the Duplicates property (dupIgnore, dupAccept, dupError). \
    ---Note: Again, this does not seem to have any actual effect.
    ---@param DuplicatesType DuplicatesType
    setDuplicates    = function(DuplicatesType) end,
    ---Returns the Sorted property.
    ---@return boolean
    getSorted        = function() end,
    ---Sets the Sorted property.
    ---@param Boolean boolean
    setSorted        = function(Boolean) end,
    ---Returns the CaseSensitive property.
    ---@return boolean
    getCaseSensitive = function() end,
    ---Sets the CaseSensitive property.
    ---@param Boolean boolean
    setCaseSensitive = function(Boolean) end,
}

---@class TableFile : Object
---Class for Cheat Engine Table Files (CE Form->Menu->Table) \
---Table files can be added from the Cheat Engine form.
TableFile = {
    ---The table file's name
    ---@type string
    Name       = nil,
    ---The table file's underlying `MemoryStream` object.
    ---@type MemoryStream
    Stream     = nil,
    ---Saves the TableFile to the given file path.
    ---@param filePath string
    saveToFile = function(filePath) end,
    ---Returns the table file's underlying `MemoryStream` object.
    ---@return MemoryStream
    getData    = function() end
}

---@class Component : Object
---Base class for components.
Component = {
    ---Number of child components.
    ---@type integer
    ComponentCount      = nil,
    ---Array containing the child components. Starts at 0.
    ---@type Component[]
    Component           = nil,
    ---Returns a component based on the name.
    ---@type Component[]
    ComponentByName     = nil,
    ---The name of the component.
    ---@type string
    Name                = nil,
    ---Free to use storage space. (Usefull for id's)
    ---@type integer
    Tag                 = nil,
    ---Returns the owner of this object. Nil if it has none.
    ---@type Component
    Owner               = nil,
    ---Returns the number of components attached to his component
    ---@return integer
    getComponentCount   = function() end,
    ---Returns the specific component.
    ---@param index integer
    ---@return Component
    getComponent        = function(index) end,
    ---Returns the component with this name.
    ---@param name string
    ---@return Component
    findComponentByName = function(name) end,
    ---Return the name.
    ---@return string
    getName             = function() end,
    ---Changes the name.
    ---@param newName string
    setName             = function(newName) end,
    ---Get the tag value.
    ---@return integer
    getTag              = function() end,
    --Sets an integer value. You can use this for ID's.
    ---@param tagValue integer
    setTag              = function(tagValue) end,
    ---Returns the owner of this component
    ---@return Component
    getOwner            = function() end
}

---@class Control : Component
Control = {
    ---The text of a control.
    ---@type string
    Caption = nil,
    ---The x position.
    ---@type integer
    Top = nil,
    ---The y position.
    ---@type integer
    Left = nil,
    ---The width of the control.
    ---@type integer
    Width = nil,
    ---The height of the control.
    ---@type integer
    Height = nil,
    ---The usable width inside the control (minus the borders).
    ---@type integer
    ClientWidth = nil,
    ---The usable height the control (minus the borders).
    ---@type integer
    ClientHeight = nil,
    ---Alignment of the control.
    ---@type AlignmentOption
    Align = nil,
    ---Determines if the object is usable or greyed out.
    ---@type boolean
    Enabled = nil,
    ---Determines if the object is visible or not.
    ---@type boolean
    Visible = nil,
    ---The color of the object. Does not affect the caption.
    Color = nil,
    ---The owner of this control.
    ---@type WinControl|nil
    Parent = nil,
    ---The popup menu that shows when rightclicking the control.
    ---@type PopupMenu
    PopupMenu = nil,
    ---The font class associated with the control.
    ---@type Font
    Font = nil,
    ---The function to call when a button is pressed.
    ---@type function
    OnClick = nil,
    ---Returns the left position.
    ---@return integer
    getLeft = function() end,
    ---Sets the left position.
    ---@param value integer
    setLeft = function(value) end,
    ---Returns the top position.
    ---@return integer
    getTop = function() end,
    ---Sets the top position.
    ---@param value integer
    setTop = function(value) end,
    ---Returns the width.
    ---@return integer
    getWidth = function() end,
    ---Sets the width.
    ---@param value integer
    setWidth = function(value) end,
    ---Returns the height.
    ---@return integer
    getHeight = function() end,
    ---Sets the height.
    ---@param value integer
    setHeight = function(value) end,
    ---Sets the text on a control. All the gui objects fall in this category.
    ---@param caption string
    setCaption = function(caption) end,
    ---Returns the text of the control
    ---@return string
    getCaption = function() end,
    ---Sets the x and y position of the object base don the top left position (relative to the client array of the owner object)
    ---@param x integer
    ---@param y integer
    setPosition = function(x, y) end,
    ---Returns the x and y position of the object (relative to the client array of the owner object)
    ---@return integer,integer
    getPosition = function() end,
    ---Sets the width and height of the control
    ---@param x integer
    ---@param y integer
    setSize = function(x, y) end,
    ---Gets the size of the control
    ---@return integer,integer
    getSize = function() end,
    ---sets the alignment of the control.
    ---@param alignmentOption AlignmentOption
    setAlign = function(alignmentOption) end,
    ---gets the alignment of the control.
    ---@param alignmentOption AlignmentOption
    ---@return AlignmentOption
    getAlign = function(alignmentOption) end,
    ---gets the enabled state of the control.
    ---@return boolean
    getEnabled = function() end,
    ---Sets the enabled state of the control.
    ---@param state boolean
    setEnabled = function(state) end,
    ---gets the visible state of the control.
    ---@return boolean
    getVisible = function() end,
    ---sets the visible state of the control.
    ---@param state boolean
    setVisible = function(state) end,
    ---gets the color.
    ---@return integer
    getColor = function() end,
    ---Sets the color.
    ---@param rgb integer
    setColor = function(rgb) end,
    ---Returns nil or an object that inherits from the WinControl class.
    ---@return WinControl|nil
    getParent = function() end,
    ---Sets the parent for this control.
    ---@param winControl WinControl
    setParent = function(winControl) end,
    ---Returns the pop up menu.
    ---@return Menu
    getPopupMenu = function() end,
    ---Sets the pop up menu.
    setPopupMenu = function() end,
    ---Returns the Font object of this object.
    ---@return Font
    getFont = function() end,
    ---Assigns a new font object. (Not recommended to use. Change the font object that's already there if you wish to change fonts).
    setFont = function() end,
    ---Invalidates the graphical area of the control and forces and update.
    repaint = function() end,
    ---Only updates the invalidated areas.
    update = function() end,
    ---Sets the onclick routine.
    ---@param functionNameOrString function|string
    setOnClick = function(functionNameOrString) end,
    ---Gets the onclick function.
    ---@return function
    getOnClick = function() end,
    ---Executes the current function under onClick.
    doClick = function() end,
}

---@class GraphicsObject : Object

---@class Region : GraphicsObject
Region = {
    ---Adds a rectangle to the region
    ---@param x1 integer
    ---@param y1 integer
    ---@param x2 integer
    ---@param y2 integer
    addRectangle = function(x1, y1, x2, y2) end,
    ---Adds an array of 2D locations. (example : {{0,0},{100,100}, {0,100}} for a triangle )
    ---@param tablewithcoordinates { [integer]: integer[] }
    addPolygon = function(tablewithcoordinates) end
}

---Creates an empty region.
---@return Region
function createRegion() end

---@class WinControl : Control
---Base class for windows aware controls.
WinControl = {
    ---Graphical updates will go to a off screen bitmap which will then be shown on the screen instead of directly to the screen. May reduce flickering.
    ---@type boolean
    DoubleBuffered  = nil,
    ---The number of child controls of this WinControl.
    ---@type integer
    ControlCount    = nil,
    ---Array to access a child Control.
    ---@type Control[]
    Control         = nil,
    ---Function to be called when the WinControl gains focus.
    ---@type function
    OnEnter         = nil,
    ---Function to be called when the WinControl loses focus.
    ---@type function
    OnExit          = nil,
    ---Returns the number of Controls attached to this class
    ---@return integer
    getControlCount = function() end,
    ---Returns a WinControl class object
    ---@param index integer
    ---@return Control
    getControl      = function(index) end,
    ---Gets the Control at the given x,y position relative to the WinControl's position
    ---@param x integer
    ---@param y integer
    ---@return integer,integer
    getControlAtPos = function(x, y) end,
    ---returns true if the object can be focused
    ---@return boolean
    canFocus        = function() end,
    ---returns boolean true when focused
    ---@return boolean
    focused         = function() end,
    ---tries to set keyboard focus to the object.
    setFocus        = function() end,
    ---Sets the Region/Bitmap object as the new shape for this WinControl.
    ---@param regionOrbitmap Region|Bitmap
    setShape        = function(regionOrbitmap) end,
    ---Sets an 'onEnter' event. (Triggered on focus enter)
    ---@param function_ function
    setOnEnter      = function(function_) end,
    ---Returns the 'onEnter' event.
    ---@return function
    getOnEnter      = function() end,
    ---Sets an 'onExit' event. (Triggered on lost focus)
    ---@param function_ function
    setOnExit       = function(function_) end,
    ---Returns the 'onExit' event.
    ---@return function
    getOnExit       = function() end,
}

---@class CustomControl : WinControl
CustomControl = {
    ---The canvas object for drawing on the control/. Readonly
    ---@type Canvas
    Canvas = nil,
    ---Returns the Canvas object for the given object that has inherited from customControl
    ---@return Canvas
    getCanvas = function() end
}

---@class CustomCanvas : Object

---@class Canvas : CustomCanvas
Canvas = {
    ---The brush object
    ---@type Brush
    Brush = nil,
    ---The pen object
    ---@type Pen
    Pen = nil,
    ---The font object
    ---@type Font
    Font = nil,
    ---Width of the canvas
    ---@type integer
    Width = nil,
    ---Height of the canvas
    ---@type integer
    Height = nil,
    ---Returns the brush object of this canvas
    ---@return Brush
    getBrush = function() end,
    ---Returns the pen object of this canvas
    ---@return Pen
    getPen = function() end,
    ---Returns the font object of this canvas
    ---@return Font
    getFont = function() end,
    ---@return integer
    getWidth = function() end,
    ---@return integer
    getHeight = function() end,
    ---@return integer,integer
    getPenPosition = function() end,
    ---@param x integer
    ---@param y integer
    setPenPosition = function(x, y) end,
    clear = function() end,
    ---@param sourcex integer
    ---@param sourcey integer
    ---@param destinationx integer
    ---@param destinationy integer
    line = function(sourcex, sourcey, destinationx, destinationy) end,
    ---@param destinationx integer
    ---@param destinationy integer
    lineTo = function(destinationx, destinationy) end,
    ---@param x1 integer
    ---@param y1 integer
    ---@param x2 integer
    ---@param y2 integer
    rect = function(x1, y1, x2, y2) end,
    ---@param x1 integer
    ---@param y1 integer
    ---@param x2 integer
    ---@param y2 integer
    fillRect = function(x1, y1, x2, y2) end,
    ---@param x integer
    ---@param y integer
    ---@param text string
    textOut = function(x, y, text) end,
    ---@param text string
    ---@return integer
    getTextWidth = function(text) end,
    ---@param text string
    ---@return integer
    getTextHeight = function(text) end,
    ---@param x integer
    ---@param y integer
    ---@return integer
    getPixel = function(x, y) end,
    ---@param x integer
    ---@param y integer
    ---@param color integer
    setPixel = function(x, y, color) end,
    ---@param x integer
    ---@param y integer
    floodFill = function(x, y) end,
    ---@param x1 integer
    ---@param y1 integer
    ---@param x2 integer
    ---@param y2 integer
    ellipse = function(x1, y1, x2, y2) end,
    ---Gradient fills a rectangle. Direction can be 0 or 1. 0=Vertical 1=Horizontal
    ---@param x1 integer
    ---@param y1 integer
    ---@param x2 integer
    ---@param y2 integer
    ---@param startcolor integer
    ---@param stopcolor integer
    ---@param direction integer
    gradientFill = function(x1, y1, x2, y2, startcolor, stopcolor, direction) end,
    ---Draws an image from one source to another. Useful in cases of doublebuffering.
    ---@param dest_x1 integer
    ---@param dest_y1 integer
    ---@param dest_x2 integer
    ---@param dest_y2 integer
    ---@param sourceCanvas Canvas
    ---@param source_x1 integer
    ---@param source_y1 integer
    ---@param source_x2 integer
    ---@param source_y2 integer
    copyRect = function(dest_x1, dest_y1, dest_x2, dest_y2, sourceCanvas, source_x1, source_y1, source_x2, source_y2) end,
    ---Draw the image of a specific Graphic class
    ---@param x integer
    ---@param y integer
    ---@param graphic Graphic
    draw = function(x, y, graphic) end,
    ---Returns a table containing the fields Left, Top, Right and Bottom, which define the invalidated region of the graphical object. Use this to only render what needs to be rendered in the onPaint event of objects.
    ---@return {Left: integer, Top: integer, Right: integer, Bottom: integer}
    getClipRect = function() end,
}

---@class CanvasHelper : Object

---@class CustomPen : CanvasHelper

---@class Pen
Pen = {
    ---The color of the pen
    ---@type integer
    Color = nil,
    ---Thickness of the pen
    ---@type integer
    Width = nil,
    ---@return integer
    getColor = function() end,
    ---@param color integer
    setColor = function(color) end,
    ---@return integer
    getWidth = function() end,
    ---@param width integer
    setWidth = function(width) end,
}

---@class CustomBrush : CanvasHelper

---@class Brush : CustomBrush
Brush = {
    ---@type integer
    Color = nil,
    ---@return integer
    getColor = function() end,
    ---@param color integer
    setColor = function(color) end,
}

---Returns a font object (default initialized based on the main ce window)
---@return Font
function createFont() end

---@class CustomFont : CanvasHelper

---@class Font : CustomFont
Font = {
    ---@type string
    Name = nil,
    ---@type integer
    Size = nil,
    ---@type integer
    Color = nil,
    ---Gets the fontname of the font
    ---@return string
    getName = function() end,
    ---Sets the fontname of the font
    ---@param name string
    setName = function(name) end,
    ---Gets the size of the font
    ---@return integer
    getSize = function() end,
    ---Sets the size of the font
    ---@param size integer
    setSize = function(size) end,
    ---Gets the color of the font
    ---@return integer
    getColor = function() end,
    ---Sets the color of the font
    ---@param color integer
    setColor = function(color) end,
    ---Copies the contents of the font given as parameter to this font
    ---@param font Font
    assign = function(font) end
}

---@class Graphic : Object
Graphic = {
    ---@type integer
    Width = nil,
    ---@type integer
    Height = nil,
    ---@type boolean
    Transparent = nil,
    getWidth = function(graphic) end,
    setWidth = function(graphic, width) end,
    getHeight = function(graphic) end,
    setHeight = function(graphic, height) end,
}

---@class RasterImage : Graphic
RasterImage = {
    ---@type Canvas
    Canvas = nil,
    ---the pixelformat for this image. Will clear the current image if it had one. Supported pixelformats: pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit (recommended)
    ---@type PixelFormat
    PixelFormat = nil,
    ---@type integer
    TransparentColor = nil,
    ---Returns the Canvas object for this image
    ---@return Canvas
    getCanvas = function() end,
    ---Returns the current pixelformat
    ---@return PixelFormat
    getPixelFormat = function() end,
    ---Sets the pixelformat for this image. Will clear the current image if it had one. Supported pixelformats: pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit (recommended)
    ---@param pixelformat PixelFormat
    setPixelFormat = function(pixelformat) end,
    ---Returns the color set to be transparent
    ---@return integer
    getTransparentColor = function() end,
    ---Sets the color that will be rendered as transparent when drawn
    ---@param transparentColor integer
    setTransparentColor = function(transparentColor) end
}

---@class CustomBitmap : RasterImage

---@class Bitmap : CustomBitmap

---Returns a Bitmap object
---@param width integer
---@param height integer
---@return Bitmap
function createBitmap(width, height) end

---Creates a menu item that gets added to the owner menu
---@param ownermenu any
---@return MenuItem
function createMenuItem(ownermenu) end

---@class MenuItem : Component
MenuItem = {
    ---Text of the menu item
    ---@type string
    Caption = nil,
    ---Shortcut in textform to trigger the menuitem
    ---@type string
    Shortcut = nil,
    ---Number of children attached to this menuitem
    ---@type integer
    Count = nil,
    ---The menu this item resides in
    ---@type Menu
    Menu = nil,
    ---The menuitem this item hangs under
    ---@type MenuItem
    Parent = nil,
    ---The position this menu item is in it's parent
    ---@type integer
    MenuIndex = nil,
    ---Array to access each child menuitem
    ---@type MenuItem[]
    Item = nil,
    ---Function to call when the menu item is activated
    ---@type function
    OnClick = nil,
    ---Gets the caption of the menu item
    ---@return string
    getCaption = function() end,
    ---Sets the caption of the menu item
    ---@param caption string
    setCaption = function(caption) end,
    ---Returns the shortcut for this menu item
    ---@return string
    getShortcut = function() end,
    ---Sets the shortcut for this menuitem. A shortcut is a string in the form of ("ctrl+x")
    ---@param shortcut string
    setShortcut = function(shortcut) end,
    ---@return integer
    getCount = function() end,
    ---Returns the menuitem object at the given index
    ---@param index integer
    ---@return MenuItem
    getItem = function(index) end,
    ---Adds a menuItem as a submenu item
    ---@param menuitem MenuItem
    add = function(menuitem) end,
    ---Adds a menuItem as a submenu item at the given index
    ---@param index integer
    ---@param menuitem MenuItem
    insert = function(index, menuitem) end,
    delete = function(index) end,
    ---Sets an onClick event
    ---@param function_ function
    setOnClick = function(function_) end,
    ---@retunr function_
    getOnClick = function() end,
    ---Executes the onClick method if one is assigned
    doClick = function() end
}

---@class Menu : Component
Menu = {
    ---The base MenuItem class of this menu (readonly)
    ---@type MenuItem
    Items = nil,
    ---Returns the main MenuItem of this Menu
    ---@return MenuItem
    getItems = function() end
}

---@class MainMenu : Menu

---@param form any
---@return MainMenu
function createMainMenu(form) end

---@class PopupMenu : Component

---@param owner any
---@return PopupMenu
function createPopupMenu(owner) end

---@class ButtonControl : WinControl

---@class Button : ButtonControl
Button = {
    ---The result this button will give the modalform when clicked
    ---@type ModalResult
    ModalResult = nil,
    getModalResult = function(button) end,
    setModalResult = function(button, mr) end
}

---Creates a Button class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return Button
function createButton(owner) end

---@class CheckBox : ButtonControl
CheckBox = {
    ---True if checked
    ---@type boolean
    Checked = nil,
    ---True if it can have 3 states. True/False/None
    ---@type boolean
    AllowGrayed = nil,
    ---The state. (cbUnchecked=0, cbChecked=1, cbGrayed=2)
    ---@type checkboxstate
    State = nil,
    ---Function to call when the state it changed
    ---@type function
    OnChange = nil,
    ---@return boolean
    getAllowGrayed = function() end,
    ---@param value boolean
    setAllowGrayed = function(value) end,
    ---Returns a state for the checkbox. (cbUnchecked, cbChecked, cbGrayed)
    ---@return checkboxstate
    getState = function() end,
    ---Sets the state of the checkbox
    ---@param value checkboxstate
    setState = function(value) end,
    onChange = function() end,
}

---Creates a CheckBox class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return CheckBox
function createCheckBox(owner) end

---@class ToggleBox : CheckBox

---Creates a ToggleBox class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return ToggleBox
function createToggleBox(owner) end

---@class GroupBox : WinControl

---Creates a GroupBox class object which belongs to the given owner. Owner can be any object inherited from WinControl
---@param owner any
---@return GroupBox
function createGroupBox(owner) end

---@param address integer
---@return StructureFrm
function createStructureForm(address) end

---@class StructureFrm : Object
StructureFrm = {
    ---Fetches a structColumn object from the structure form
    ---@type structColumn[]
    Column = nil,
    ---Fetches a structGroup object from the structure form
    ---@type structGroup[]
    Group = nil,
    ---Forces a refresh
    structChange = function() end,
    ---Adds a new column in the currently focuses group and returns it's structColumn object
    ---@return structColumn
    addColumn = function() end,
    ---Adds a new group and returns the structGroup object
    ---@return structGroup
    addGroup = function() end,
}

---@class structColumn : Object
structColumn = {
    ---The current address
    ---@type integer
    Address = nil,
    ---Gets/sets the visual address
    ---@type string
    AddressText = nil,
    ---Gets/sets the focused state
    ---@type boolean
    Focused = nil,
    ---focuses the current column
    focus = function() end
}

---@class structGroup : Object
structGroup = {
    ---gets the current name
    ---@type string
    name = nil,
    ---Gets the groupbox object
    ---@type GroupBox
    box = nil,
    ---Gets the number of columns in the group
    ---@type integer
    columnCount = nil,
    ---Returns the specific structColumn object
    ---@type structColumn[]
    columns = nil,
    ---Adds a new columns to the specific group and returns it's structColumn objecy
    ---@return structColumn
    addColumns = function() end
}

---@return integer #Returns the number of Global structures. (Global structures are the visible structures)
function getStructureCount() end

---@param index integer
---@return structure #Returns the Structure object at the given index
function getStructure(index) end

---@param name string
---@return structure #Returns an empty structure object (Not yet added to the Global list. Call structure.addToGlobalStructureList manually)
function createStructure(name) end

---@class structure : Object
structure = {
    ---The name of the structure
    ---@type string
    Name                          = nil,
    ---The number of bytes between the last element and the start. ReadOnly
    ---@type integer
    Size                          = nil,
    ---Number of elements in the structure. ReadOnly
    ---@type integer
    Count                         = nil,
    ---Returns the structure element at the given index. Readonly
    ---@type StructureElement[]
    Element                       = nil,
    ---Returns the name
    ---@return string
    getName                       = function() end,
    ---Sets the name
    ---@param name string
    setName                       = function(name) end,
    ---Returns a structureElement object (Changing offsets can change the index)
    ---@param index integer
    ---@return StructureElement
    getElement                    = function(index) end,
    ---Returns a structureElement object where the specified offset is at least the requested offset
    ---@param offset integer
    ---@return StructureElement
    getElementByOffset            = function(offset) end,
    ---Adds a new blank structureElement and returns it
    ---@return StructureElement
    addElement                    = function() end,
    ---@param baseaddresstoguessfrom integer
    ---@param offset integer
    ---@param size integer
    autoGuess                     = function(baseaddresstoguessfrom, offset, size) end,
    ---Fills the structure with the layout gathered from querying .NET.  If changeName is true, the structure will take the name of the .NET class.  (6.4+)
    ---@param address integer
    ---@param changeName boolean
    fillFromDotNetAddress         = function(address, changeName) end,
    ---Call this when you want to make multiple updates to a structure. It will speed up the update process
    beginUpdate                   = function() end,
    ---Call this when done
    endUpdate                     = function() end,
    ---Add this to the list of structures for the user to select from. (Global structures will get saved to the table)
    addToGlobalStructureList      = function() end,
    ---Remove from the list of structures.
    removeFromGlobalStructureList = function() end,
}

---@class StructureElement : Object
StructureElement = {
    ---The number of records in the table
    ---@type structure
    Owner               = structure,
    ---The offset of this element
    ---@type integer
    Offset              = nil,
    ---The name of this element
    ---@type string
    Name                = nil,
    ---The variable type of this element
    ---@type integer
    Vartype             = nil,
    ---If not nil this element is a pointer to the structure defined here
    ---@type structure
    ChildStruct         = nil,
    ---The number of bytes inside the provided childstruct. (E.g: It might point to offset 10 of a certain structure)
    ---@type integer
    ChildStructStart    = nil,
    ---The number of bytes of this element. Readonly for basic types, writable for types that require a defined length like strings and array of bytes
    ---@type integer
    Bytesize            = nil,
    ---Returns the structure this element belongs to
    ---@return structure
    getOwnerStructure   = function() end,
    ---Returns the offset of this element
    ---@return integer
    getOffset           = function() end,
    ---Sets the offset of this element
    ---@param offset integer
    setOffset           = function(offset) end,
    ---Returns the name of this element
    ---@return string
    getName             = function() end,
    ---Sets the name of this element (tip: Leave blank if you only want to set the name of the variable)
    ---@param name? string
    setName             = function(name) end,
    ---Returns the variable type of this element (check Variable types in defines.lua)
    ---@return integer
    getVartype          = function() end,
    ---@param vartype integer
    setVartype          = function(vartype) end,
    ---@return structure
    getChildStruct      = function() end,
    ---@param structure structure
    setChildStruct      = function(structure) end,
    ---@return integer
    getChildStructStart = function() end,
    ---@param offset integer
    setChildStructStart = function(offset) end,
    ---Gets the bytesize of the element. Usually returns the size of the type, except for string and aob
    ---@return integer
    getBytesize         = function() end,
    ---sets the bytesize for types that are affected (string, aob)
    ---@param size integer
    setBytesize         = function(size) end,
}
