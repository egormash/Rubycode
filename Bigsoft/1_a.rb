pail = {}
pail['red']  = 50
pail['green']  = 100
pail['blue'] = 30
pail['yellow'] = 60

puts pail.max

if pail['green'] > pail['yellow']
	answer1 = 'more'
else
	answer1 = 'less'
end

if pail['green'] > (pail['red'] + pail['blue'])
	answer2 = 'more'
else
	answer2 = 'less'
end

puts 'Green pail contain ' + answer1 + ' then yellow pail.'
puts 'Green pail contain ' + answer2 + ' then red and blue pails together.'