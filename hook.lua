local OldIndex
OldIndex = hookmetamethod(game, "__index", function(Self, Index)
    return OldIndex(Self, Index)
end)

local OldNewIndex
OldNewIndex = hookmetamethod(game, "__newindex", function(Self, Index, Value)
    return OldNewIndex(Self, Index, Value)
end)

local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
    return OldNamecall(Self, ...)
end)

local mt = getrawmetatable(game)

local old
old = hookfunction(mt.__namecall, function(...)
   return old(...)
end)
