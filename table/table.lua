local t = {}
local y = {}

t.name = "José"
t.position = "PO"

y[1] = 17
y[2] = 45
y["demo"] = "Além do horizonte"

print("Apresentando o " .. t.name .. " que é um " .. t.position)
print(y.demo .. " existem o " .. y[1] .. " e o " .. y[2])
