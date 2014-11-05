class Array
  
  def eachEven(&wasABlock_nowAProc)
    isEven = true # Мы начинаем с "true", т.к. массив начинается с 0, а он чётный.
    
    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end
      
      isEven = (not isEven)  #  Переключиться с чётного на нечётное или наоборот.
    end
  end

end

['яблоками', 'гнилыми яблоками', 'вишней', 'дурианом'].eachEven do |fruit|
  puts 'Мммм!  Я так люблю пирожки с '+fruit+', а вы?'
end

#  Помните, что мы берём элементы массива с чётными номерами,
#  все из которых оказываются нечётными числами; это
#  просто потому, что мне захотелось создать подобные трудности.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' - НЕ чётное число!'
end