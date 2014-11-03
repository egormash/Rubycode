class OrangeTree

  def initialize
  	@height = 0.5
  	@years = 1
  	@orangeCount = 0
    puts 'You plant a new OrangeTree'
  end

  def height # возвращает высоту дерева
  	@height
  end

  def years # возвращает возраст дерева
  	@years
  end

  def countTheOranges # возвращает кол-во апельсинов на дереве
  	@orangeCount
  end

  def pickAnOrange # собираем 1 апельсин
  	if @orangeCount > 0 and @years > 3
  		@orangeCount = @orangeCount - 1
  		puts 'Such a tasty orange!'
  	else
  		puts 'Nothing to pick from OrangeTree...'
  	end
  end

  def oneYearPasses
  	@years = @years + 1
  	@height = @height + 0.5
    @orangeCount = 0
  	if @years > 3
      @orangeCount = @years*3
  	end
    if @years > 7
      puts 'OrangeTree die...'
      exit
    end
  end
end

OT = OrangeTree.new
while 1 == 1
  puts 'What to do?'
  command = gets.chomp
  if command == 'pickAnOrange'
    OT.pickAnOrange
  elsif command == 'oneYearPasses'
    OT.oneYearPasses
  elsif command == 'countTheOranges'
    puts OT.countTheOranges.to_s + 'oranges at the tree.'
  else
    puts 'Enter valid commnd (pickAnOrange or oneYearPasses).'
  end
end