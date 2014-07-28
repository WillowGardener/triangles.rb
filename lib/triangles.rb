class Triangles

  def initialize(side1,side2,side3)
    @sides = [side1, side2, side3].sort.reverse
  end

  def triangle_checker
    if  @sides[0] > @sides[1] + @sides[2]
      "impossible"
    elsif @sides.all? {|side| side == @sides[0]}
      "equilateral"
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      "isosceles"
    else
      "scalene"
    end
  end
end


