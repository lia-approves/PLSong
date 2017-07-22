Word1 = {}

Word2 = {__index = Word1}

  function Word1.new(class, a)
    local self = setmetatable({}, class)
      self.a = a
    return self
  end

  function Word1:foo()
    return "is very "
  end

Word3 = {}
Word4 = {__index = Word3}
  setmetatable(Word3, Word2)

  function Word3:foo()
    return self.a .. " " .. Word2:foo2()
  end

  function Word2:foo2()
    self.a = "meta."
    setmetatable(self, Word2)
    return self:foo() .. self.a
  end

  function Word3.new(class, a)
    local self = Word1:new(a)
    return setmetatable(self, Word4)
  end

o = Word3:new("Lua")
print(o:foo())