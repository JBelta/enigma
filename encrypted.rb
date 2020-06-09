require "./lib/enigma"

enigma = Enigma.new

message = File.open(ARGV[0], "r")
input = message.read.chomp
encrypted = enigma.encrypt(input, "02715", "040895")

writer = File.open(ARGV[1], "w")
writer.write(encrypted[:encryption])
writer.close

puts "Created 'encrypted.txt' with the key #{encrypted[:key]} and the date #{encrypted[:date]}"
