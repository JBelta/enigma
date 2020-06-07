require "./lib/shift"

class Enigma < Shift
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end
end
