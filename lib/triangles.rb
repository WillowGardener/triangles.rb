class Triangles

  def initialize(sides)
    @sides = sides.sort.reverse
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

def main_menu
  loop do
    puts "/// TRIANGLE CALCULATOR ///"
    puts "enter the three sides of the triangle with just a space between them (e.g. 3 4 5)"
    input = (gets.chomp.split).map { |x| x.to_i }
    new_triangle = Triangles.new(input)
    p new_triangle.triangle_checker + " triangle!"
    exit
  end
end

main_menu
