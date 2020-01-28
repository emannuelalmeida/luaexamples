local Point_metatable = {
    __add = function (p1, p2) 
        return Point{x=p1.x+p2.x, y=p1.y+p2.y, z=p1.z+p2.z}
    end,
    __sub = function (p1, p2) 
        return Point{x=p1.x-p2.x, y=p1.y-p2.y, z=p1.z-p2.z}
    end
}

function Point(self)
    self.x = tonumber(self.x) or 0
    self.y = tonumber(self.y) or 0
    self.z = tonumber(self.z) or 0
    setmetatable(self, Point_metatable)
    return self
end

local startPoint = Point{x=3, y=25, z=34}
local endPoint = Point{x=5, y=72, z=34}
local delta = endPoint - startPoint

print("Delta: x:" .. delta.x .. ", y:" .. delta.y .. ", z:" .. delta.z)
