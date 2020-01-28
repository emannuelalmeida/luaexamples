function fat (num)
    if num == 0 then
        return 1
    else
        return num * fat(num-1)
    end
end

num = 3

print(num)
print(fat(num))
print(fat)

x = 5
y = fat(x)

x, y = y, x

print(x)
print(y)

function counter ()
    local i = 0
    return function ()
        i = i +1
        return i
    end
end

local y = counter()
for x = 1, 10 do
    print("Writting result: " .. y())
end
