def  compare (a, b)
	if a.class == Array && b.class == Array
		p a.map { |elem| elem if b.include?(elem) }
	else
		p 0
	end
end