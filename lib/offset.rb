require 'date'
class Offset
  attr_reader :date_num

  def initialize
    @date_num = Time.now.strftime("%m%d%y").to_i
  end

  def last_four
    four_num = @date_num ** 2
    four_num.to_s.split("").last(4)
  end
end
