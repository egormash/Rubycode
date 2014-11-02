$VERBOSE = nil
puts 'Input start year:'
StartYear = gets.chomp.to_i
puts 'Input end year:'
EndYear = gets.chomp.to_i
while StartYear <= EndYear
	if StartYear%4 == 0 and StartYear%100 != 0
		puts StartYear
	else
		if StartYear%400 == 0
			puts StartYear
		end
	end
StartYear = StartYear + 1
end