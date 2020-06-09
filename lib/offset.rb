require 'date'

class Offset
  attr_reader :date, :numbers

  def initialize
    @date = Time.now.strftime("%m%d%y")
    @numbers = (@date.to_i ** 2).to_s.split("").last(4)
  end
end
