puts 'Введите название перовй главы:'
chapter1 = gets.chomp
puts 'Введите страницу перовй главы:'
chapter1page = gets.chomp

puts 'Введите название второй главы:'
chapter2 = gets.chomp
puts 'Введите страницу второй главы:'
chapter2page = gets.chomp

puts 'Введите название третьей главы:'
chapter3 = gets.chomp
puts 'Введите страницу третьей главы:'
chapter3page = gets.chomp

puts 'Содержание'.center(50)
puts 'Глава 1: ' + chapter1.ljust(30) + ('page ' + chapter1page).rjust(11)
puts 'Глава 2: ' + chapter2.ljust(30) + ('page ' + chapter2page).rjust(11)
puts 'Глава 3: ' + chapter3.ljust(30) + ('page ' + chapter3page).rjust(11)