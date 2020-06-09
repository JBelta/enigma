require "./lib/enigma"

enigma = Enigma.new

message = File.open(ARGV[0], "r")
input = message.read
encrypted = enigma.encrypt(input)
code = encrypted[:encryption]
require 'pry'; binding.pry

writer = File.open(ARGV[1], "w")
writer.write(code)
writer.close
