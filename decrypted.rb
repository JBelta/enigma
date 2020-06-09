require "./lib/enigma"

enigma = Enigma.new

message = File.open(ARGV[0], "r")
input = message.read.chomp
decrypted = enigma.encrypt(input, "02715", "040895")

writer = File.open(ARGV[1], "w")
writer.write(decrypted[:decryption])
writer.close

puts "Created 'decrypted.txt' with the key #{encrypted[:key]} and the date #{encrypted[:date]}"
