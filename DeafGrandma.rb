#������ ������
$VERBOSE = nil
puts 'Hi grandson. Say me anything.'
Isay = gets.chomp
while (Isay!='BYE BYE BYE')
	if (Isay == Isay.upcase and Isay!='BYE')
	# � �����
		puts 'NO, NO ONE SINCE ' + (1930 + rand(21)).to_s + ' YEAR!'
	else
	# � �� �����
		puts 'WHAT?! SAY LOYDLY, GRANDSON!'
	end
Isay = gets.chomp
end
puts 'Bye grandson!'