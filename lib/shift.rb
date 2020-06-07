require 'date'
class Offset
  attr_reader :date_num

  def initialize
    @date_num = Time.now.strftime("%m%d%y").to_i
  end
