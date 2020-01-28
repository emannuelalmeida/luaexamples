require("functions.functions")
luaunit = require('luaunit')

TestSuccess = {}
    function TestSuccess:setUp() 
        -- this function is run before each test, so that multiple
        -- tests can share initialisations
        self.a = 1
        self.b = 2
        print("This method does actually nothing...")
    end    

    function TestSuccess:testWithFive()
        local x = 5
        local result = fat(x)
        luaunit.assertEquals(type(result), 'number')
        luaunit.assertEquals(result, 120)
    end

luaunit.run()
