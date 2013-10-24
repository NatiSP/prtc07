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
  
  def to_s
    #puts "#{@n}/#{@d}"
    "#{@n}/#{@d}"
  end
  
  def float
    #puts @n.to_f/@d.to_f
    return (@n.to_f/@d.to_f)
  end
  
  def ==(other)
    if @n == other.n and @d == other.d
	#puts "true"
        return true
    else
	#puts "false"
        return false
    end
  end
  
  def abs
    Fraccion.new(@n.abs,@d.abs).to_s
  end
end