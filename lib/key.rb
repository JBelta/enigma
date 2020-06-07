class Key
  attr_reader :numbers

  def initialize
    @numbers = rand().to_s
  end
end 
