require "./lib/enigma"

enigma = Enigma.new

message = File.open(ARGV[0], "r")
input = message.read
decrypted = enigma.decrypt(input, ARGV[2], ARGV[3])

writer = File.open(ARGV[1], "w")
writer.write(decrypted[:decryption])
writer.close

puts "Created 'decrypted.txt' with the key #{decrypted[:key]} and the date #{decrypted[:date]}"
