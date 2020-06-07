require './lib/offset'
require './lib/key'

class Shift
  attr_reader :keys, :offsets

  def initialize
    @keys = Key.new.first_five
    @offsets = Offset.new.last_four
  end

  def key_pairs
    key_collection = []
    @keys.each_cons(2) do |string_1, string_2|
      key_collection << (string_1+string_2)
    end
    key_collection
  end
end
