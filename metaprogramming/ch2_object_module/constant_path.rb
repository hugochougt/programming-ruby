Y = 'a root-level constant'
module M
  Y = 'a constant in M'
  class C
    X = 'a constant'
    Y # => "a constant in M"
    ::Y #=> "a root-level constant"
    Module.nesting # => [M::C, M]
  end
  C::X # => "a constant"
  Y    # => "a constant in M"
  ::Y  #=> "a root-level constant"
  Module.nesting # => [M]
end

Y
# => "a root-level constant"

C::X
# NameError: uninitialized constant C

M::C::X
# => "a constant"

