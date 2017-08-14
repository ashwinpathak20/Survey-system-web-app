class Temp
  attr_reader :myvar
  attr_accessor :myvar
  @@count=0
  def initialize
    @myvar=5
    @@count+=1
  end

  def func
  end
end
t=Temp.new
puts t.count
t=Temp.new
puts t.count
