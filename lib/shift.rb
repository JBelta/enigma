require './lib/offset'
require './lib/key'

class Shift
  attr_reader :keys, :offsets

  def initialize
    @keys = Key.new.first_five
    @offsets = Offset.new
  end

  def key_pairs
    key_collection = []
    @keys.each_cons(2) do |string_1, string_2|
      key_collection << (string_1+string_2)
    end
    key_collection
  end

  def sum_keys_and_offsets
   sum = [self.key_pairs, @offsets.last_four].transpose.map do |string|
     string[0].to_i + string[1].to_i
   end
   sum
  end
end
