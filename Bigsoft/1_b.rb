blr = 11170
fee = 1.3
puts 'To buy 270 dollars you need ' + (blr*fee*270).to_i.to_s + ' belarussian rubles.'
if (5_600_000 % (blr * fee)) > 10000
	answer = 'can'
else
	answer = 'can\'t'
end

puts 'If you have 5 600 000 berarussian rubles you can buy ' + (5_600_000 / (blr * fee)).to_i.to_s + ' dollars. And for odd momey you ' + answer + ' buy ice cream!'