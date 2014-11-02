$VERBOSE = nil

puts 'Enter words while you not enter \'Enter\' and I sort it.'
Entered = gets.chomp
EnteredMass = [Entered]

while Entered != ''
	Entered = gets.chomp
	if Entered != ''
		EnteredMass.push Entered
	end
end

puts 'Here are sorted words:'
EnteredMass = EnteredMass.sort
puts EnteredMass