foods = ['artishok', 'briosh\'', 'karam']
puts foods.length
puts foods[1]
puts foods.to_s
puts foods.join (' ')
foods.each do |foodIlike|
puts 'I like ' + foodIlike
end
foods.push gets.chomp
puts foods.to_s
puts foods.sort.to_s
puts foods.reverse.to_s
foods = foods.reverse
puts foods
foods = foods.sort
puts foods.last