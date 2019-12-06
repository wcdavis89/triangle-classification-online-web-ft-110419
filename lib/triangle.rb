class Triangle
  attr_accessor :side1, :side2, :side3
  
  @@sides=[]
  
  def initialize
    @side1=side1
    @side2=side2
    @side3=side3
    @@sides << side1
    @@sides << side2
    @@sides << side3
  end
  
  def self.sides 
    @@sides 
  end
  
  
  def valid?
    sides.each {|side| }
    
end
