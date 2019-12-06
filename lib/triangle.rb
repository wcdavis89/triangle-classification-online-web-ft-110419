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
    if valid1 == true && valid2 == true 
      puts true 
    else 
      raise TriangleError 
    end
    if side1 == side2 && side2 == side3 
      :equilateral
    elsif side1 != side2 && side2 != side3 && side3 !=side1
      :scalene
    else
      :isosceles
    end
  end
  
   def valid1 
    side1.positive? && side2.positive? && side3.positive?
  end 
  
  def valid2 
    side1 + side2 > side3 && side2 + side3 >  side1 && side3 + side1 > side2
  end 

    def valid?
      if valid1 == true && valid2 == true && valid3 == true 
        return true 
      else 
        raise TriangleError
      end
    end
    
  
  class TriangleError < StandardError
  end 
end
