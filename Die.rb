class Die  #  игральная кость  
  def initialize
    roll
  end
  
  def roll
    @numberShowing = 1 + rand(6)
  end
  
  def showing
    @numberShowing
  end
  
  def cheat
    puts 'What number you cheat:'
    @numberShowing = gets.chomp.to_i
    while @numberShowing < 1 or @numberShowing > 6
      puts 'Enter valid number:'
      @numberShowing = gets.chomp.to_i
    end
    @numberShowing
  end
end

puts Die.new.cheat