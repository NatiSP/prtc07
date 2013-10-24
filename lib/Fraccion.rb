def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end


class Fraccion
  attr_reader :n, :d
  def initialize(n,d)
    @n = n/gcd(n,d)
    @d = d/gcd(n,d)
    
  end
  
  def num()
    #puts @n
    return @n
  end
  
  def denom()
    #puts @d
    return @d
  end
  
  
end