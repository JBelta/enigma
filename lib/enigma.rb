require "./lib/shift"

class Enigma < Shift
  attr_reader :message, :key, :date, :alphabet, :shift

  def initialize
    @alphabet = ("a".."z").to_a << " "
    @message = "Hello World"
    @key = Key.new.first_five.sum("")
    @date = Offset.new.date
    @shift = Shift.new.sum_keys_and_offsets
  end

  def args_are_instance_variables
    encrypted = []
    input = message.downcase.split("")
    index = input.map{|letter| @alphabet.index(letter)}
    cycle_limit = (index.count % @shift.count) + 1
    index_shifts = index.zip(@shift.cycle(cycle_limit))
    index_shifts.each do |pair|
    encrypted << @alphabet.rotate(pair[1])[pair[0]]
    end
    hash = {encryption: encrypted.join, key: key, date: date}
  end
end
