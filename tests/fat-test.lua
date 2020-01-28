require("functions.functions")
require('luaunit')

TestSuccess = {}
    function TestSuccess:withFive()
        local x = 5
        local result = fat(x)
        assertEquals(type(result), 'number')
        assertEquals(result, 120)
    end


LuaUnit:run()
