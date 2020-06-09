require "./lib/shiftable"
require "./lib/key"
require "./lib/offset"

class Enigma
  include Shiftable

  attr_reader :message, :random, :date, :alphabet, :shift

  def initialize
    @alphabet = ("a".."z").to_a << " "
    @message = "Hello World"
    @random = Key.new.numbers.join
    @date = Offset.new.date
  end

  def encrypt(message, key = @random, date = @date)
    encrypted = []
    key_array = key.split("")
    input = message.downcase.split("")
    index = input.map{|letter| @alphabet.index(letter)}
    keys = key_pairs(key_array)
    offsets = offset_array(date)
    shift = sum_keys_and_offsets(keys, offsets)
    cycle_limit = (index.count / shift.count) + 1
    index_shifts = index.zip(shift.cycle(cycle_limit))
    index_shifts.each do |pair|
      encrypted << @alphabet.rotate(pair[1])[pair[0]]
    end
    hash = {encryption: encrypted.join, key: key, date: date}
  end

  def decrypt(message, key = @random, date = @date)
    encrypted = []
    key_array = key.split("")
    input = message.downcase.split("")
    index = input.map{|letter| @alphabet.index(letter)}
    keys = key_pairs(key_array)
    offsets = offset_array(date)
    shift = sum_keys_and_offsets(keys, offsets)
    cycle_limit = (index.count / shift.count) + 1
    index_shifts = index.zip(shift.cycle(cycle_limit))
    index_shifts.each do |pair|
      encrypted << @alphabet.rotate(-pair[1])[pair[0]]
    end
    hash = {decryption: encrypted.join, key: key, date: date}
  end
end
