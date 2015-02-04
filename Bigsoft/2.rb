#1
str = "dniMyMdegnahCybuR"
puts str.reverse!.capitalize!

#2
number = 456 # not only three-digit
num_str = number.to_s
str = num_str[0]
(num_str.length - 1).times { |i| str << "#{str[i].to_i + 1}"}
if str == num_str
	puts 'Yes'
else
	puts 'No'
end

#3
4.upto(16) { |num| if num.odd? then puts num end}

#4
num = 1234567
puts num.to_s.reverse

#5
num = 123456
str_n = num.to_s
summ = 0
str_n.each_char { |i| summ += str_n[i].to_i}
puts summ

#6
str = 'Anaconda'
puts "#{str.count('a') + str.count('A')}"

#7
name = "Yauhen"
surname = "Hormash"
a = "xxx"
puts a + ' ' + name.upcase + ' ' + a + ' ' + surname.downcase + ' ' + a

#8
puts surname.length%3

#9
str = "saippuakauppias"
puts str == str.reverse

#10
x = 1
y = 2
puts "Distance from point A(#{x},#{y}) to point (0,0) is #{Math.sqrt(x**2 + y**2)}"

#11
puts 7.class.class