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
    if side1 == side2 && side2 == side3 
      :equilateral
    elsif side1 != side2 && side2 != side3 && side3 !=side1
      :scalene
    else
      :isosceles
    end
  end
  
  def valid1
    sides.each {|side| side > 0}
      return true 
  end
  
  def valid2
    side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
      return true
  end
  
  def valid3 
    sides.each {|side| side.positive?}
      return true
  end

    def valid?
      if valid1 == true && valid2 == true && valid3 == true
    
  
  class TriangleError < StandardError
  end 
end
