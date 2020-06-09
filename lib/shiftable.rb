module Shiftable

  def key_pairs(key)
    key_collection = []
    array = key.split("")
    array.each_cons(2) do |string_1, string_2|
      key_collection << (string_1+string_2)
    end
    key_collection
  end

  def sum_keys_and_offsets(keys, offsets)
    integer = offsets.to_i ** 2
    offset_last_four = integer.to_s.split("").last(4)
    sum = [keys, offset_last_four].transpose.map do |string|
     string[0].to_i + string[1].to_i
   end
   sum
  end

end