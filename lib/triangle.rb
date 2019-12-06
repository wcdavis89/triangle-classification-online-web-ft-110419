class Triangle
  attr_accessor :side1, :side2, :side3
  
  @@sides=[]
  
  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
    @@sides << side1
    @@sides << side2
    @@sides << side3
  end
  
  def kind
    if side1 == side2 && side2 == side3 && side3 ==side1
      :equilateral
    elsif side1 != side2 && side2 != side3 && side3 !=side1
      :scalene
    else
      :isosceles
    end
  end
  
  def valid?
    if (sides.each {|side| side == 0})
      raise TriangleError
      elsif side1 + side2 <side3 && side2 + side3 <side1 && side1 + side3 <side2
      raise TriangleError
    end
  end
    
    
  
  class TriangleError < StanardError
  end 
end
