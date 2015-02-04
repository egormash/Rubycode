#1
a = (1..10).to_a
5.times {a.pop}

#2
a = (1..5).to_a
b=0
a.size.times { |i| b += a[i]}