require './lib/offset'
require './lib/key'

class Shift
  attr_reader :keys, :offsets

  def initialize
    @keys = Key.new.first_five
    @offsets = Offset.new.last_four
  end
end 
