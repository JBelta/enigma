class Key
  attr_reader :numbers

  def initialize
    @numbers = rand().to_s.delete(".").split("")[0..4]
  end
end
