require 'date'

class Offset
  attr_reader :date, :numbers

  def initialize
    @date = Time.now.strftime("%m%d%y")
    @numbers = (@date.to_i ** 2).to_s.split("").last(4)
  end

  def last_four
    four_num = @date.to_i ** 2
    four_num.to_s.split("").last(4)
  end
end
