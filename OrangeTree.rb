class OrangeTree

  def initialize
  	@height = 0.1
  	@years = 1
  	@orangeCount = 0
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
  	if @orangeCount > 0
  		@orangeCount = @orangeCount - 1
  		puts 'Such a tasty orange!'
  	else
  		puts 'Nothing to pick from OrangeTree...'
  	end
  end

  def oneYearPasses
  	@years = @years + 1
  	@height = @height + 0.5
  	if @years > 4

  	end
  	@orangeCount = 0
  	if 
  end