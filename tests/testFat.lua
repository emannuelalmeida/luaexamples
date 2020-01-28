require("functions.functions")
luaunit = require('luaunit')

TestSuccess = {}
    function TestSuccess:setUp() 
        -- this function is run before each test, so that multiple
        -- tests can share initialisations
        print("This method does actually nothing...")
    end 
    
    function TestSuccess:tearDown()
        print("Test has finished...")
    end

    function TestSuccess:testWithFive()
        local x = 5
        local result = fat(x)
        assertEquals(type(result), 'number')
        assertEquals(result, 120)
    end

    function TestSuccess:testWithSix()
        local x = 6
        local result = fat(x)
        assertEquals(type(result), 'number')
        assertEquals(result, 720)
    end

    function TestSuccess:testWithZero()
        local x = 0
        local result = fat(x)
        assertEquals(type(result), 'number')
        assertEquals(result, 1)
    end

run()
