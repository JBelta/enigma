require 'date'

class Offset
  attr_reader :date

  def initialize
    @date = Time.now.strftime("%m%d%y")
  end

  def last_four
    four_num = @date.to_i ** 2
    four_num.to_s.split("").last(4)
  end
end
