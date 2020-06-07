require "./lib/shift"

class Enigma < Shift
  attr_reader :message, :key, :date

  def initialize
    @message = ""
    @key = Shift.new.keys.sum("")
    @date = Time.now.strftime("%m%d%y")
  end
end
