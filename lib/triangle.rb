class TriangleError < StandardError

  def message
    puts "One of your sides is to short to form a triangle."
  end
end




class Triangle
  # write code here


  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0 || @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two ||@side_two + @side_three <= @side_one

      raise TriangleError
    else
      if @side_one == @side_two && side_two == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles
    else
      :scalene
    end




    end
  end
end
