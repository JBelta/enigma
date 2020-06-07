require "./lib/shift"

class Enigma < Shift
  attr_reader :message, :key, :date, :alphabet

  def initialize
    key = Key.new
    offset = Offset.new
    @alphabet = ("a".."z").to_a << " "
    @message = "Hello World"
    @key = key.first_five.sum("")
    @date = offset.date
  end

end
