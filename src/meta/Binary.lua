---@meta

---Binary Or
---```
----- 1 | 2
---print( bOr(1,2) ) -- 3
---or
---print( 1 | 2 ) -- 3
---0001
---0010
--------
---0011
---```
---print( bOr(1,2) ) -- 3 or print( 1 | 2 ) -- 3
---@param int1 integer
---@param int2 integer
---@return integer
function bOr(int1, int2) end

---Binary Xor
---```
----- 1 ^ 2
---print( bXor(1,2) ) -- 3
---or
---print (1 ~ 2) -- 3
---0001
---0010
--------
---0011
---```
---@param int1 integer
---@param int2 integer
---@return integer
function bXor(int1, int2) end

---Binary And
---```
----- 1 & 2
---print( bAnd(1,2) ) -- 0
---or
---print (1 & 2)
---0001
---0010
--------
---0000
---```
---@param int1 integer
---@param int2 integer
---@return integer
function bAnd(int1, int2) end

---Binary shift left
---```
----- 1 << 1
---print( bShl(1,1) ) -- 2
---or
---print(1 << 1)
---0001
--------
---0010
---```
---@param int1 integer
---@param int2 integer
---@return integer
function bShl(int1, int2) end

---Binary shift right
---```
----- 1 >> 1
---print( bShr(1,1) ) -- 0
---or
---print(1 >> 1)
---0001
--------
---0000
---```
---@param int1 integer
---@param int2 integer
---@return integer
function bShr(int1, int2) end

---Binary not
---```
----- ~1
---print( bNot(1) ) -- -2
---or
---print ( ~1 )
---0001
--------
---1110
---```
---@param int integer
---@return integer
function bNot(int) end
