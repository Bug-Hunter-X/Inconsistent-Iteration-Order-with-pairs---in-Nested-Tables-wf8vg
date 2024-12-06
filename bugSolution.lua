local function foo(t, orderedKeys)
  if not orderedKeys then
    orderedKeys = {} 
    for k,_ in pairs(t) do table.insert(orderedKeys,k) end
  end
  for _, k in ipairs(orderedKeys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v, {})
    end
  end
end

local t = { a = 1, b = { c = 2, d = { e = 3 } } }
foo(t)