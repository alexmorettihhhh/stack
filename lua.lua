Stack = {}
Stack.__index = Stack

function Stack:new()
    local stack = { items = {} }
    setmetatable(stack, Stack)
    return stack
end

function Stack:push(item)
    table.insert(self.items, item)
end

function Stack:pop()
    return table.remove(self.items)
end

function Stack:peek()
    return self.items[#self.items]
end

function Stack:is_empty()
    return #self.items == 0
end

local stack = Stack:new()
stack:push(1)
stack:push(2)
print(stack:pop())  -- 2