require ('triangles')
require ('rspec')

describe Triangles do
  it 'tells you whether a triangle is equilateral' do
    test_triangle = Triangles.new(3,3,3)
    test_triangle.triangle_checker.should eq "equilateral"
  end
end
describe Triangles do
  it 'tells you whether a triangle is isosceles' do
    test_triangle = Triangles.new(3,5,5)
    test_triangle.triangle_checker.should eq "isosceles"
  end
end
describe Triangles do
  it 'tells you whether a triangle is impossible' do
    test_triangle = Triangles.new(3,50,4)
    test_triangle.triangle_checker.should eq "impossible"
  end
end
describe Triangles do
  it 'tells you whether a triangle is scalene' do
    test_triangle = Triangles.new(3,4,5)
    test_triangle.triangle_checker.should eq "scalene"
  end
end
