class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.validate == true
      return :equilateral if @a == @b && @b == @c
      return :isosceles if @a == @b || @b == @c || @a == @c
      return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

  private

  def validate
    (@a > 0 && @b > 0 && @c > 0) && (@a + @b > @c && @a + @c > @b && @b + @c > @a)
  end

end
