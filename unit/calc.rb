class Calc

  attr_accessor :y

  def initialize(x,y)
    @x = x.to_f # to Float
    @y = y.to_f # to Float
  end

  def sum
    @x + @y
  end

  def division
    raise ZeroDivisionError if @y == 0
    @x / @y
  end

  def mult
  end

end
