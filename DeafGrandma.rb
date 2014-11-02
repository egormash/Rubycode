#Глухая бабуля
$VERBOSE = nil
puts 'Hi grandson. Say me anything.'
Isay = gets.chomp
while (Isay!='BYE BYE BYE')
	if (Isay == Isay.upcase and Isay!='BYE')
	# я кричу
		puts 'NO, NO ONE SINCE ' + (1930 + rand(21)).to_s + ' YEAR!'
	else
	# я не кричу
		puts 'WHAT?! SAY LOYDLY, GRANDSON!'
	end
Isay = gets.chomp
end
puts 'Bye grandson!'