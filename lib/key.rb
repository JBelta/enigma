class Key
  attr_reader :numbers

  def initialize
    @numbers = rand().to_s
  end

  def first_five
  num_str = @numbers.delete(".")
  num_str.split("")[0..4]
  end
end
