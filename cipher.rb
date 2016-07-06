def caesar(word, num)

alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
new_word = ""



word.each_char do |i|
	if !alphabet.include?(i)
		new_word +=i
	else
		new_word+= alphabet[alphabet.index(i.downcase) -num]
	end


end



return new_word.downcase.capitalize
end

print "Enter a string you want to encrypt"
ciphers = gets.chomp
print "Enter a number by how many you want to shift it"
ciphern = gets.chomp.to_i
puts caesar(ciphers, ciphern)