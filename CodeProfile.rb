def profile descriptionOfBlock, &block  #  Описание блока и сам блок 
  startTime = Time.now
  
  block.call
  
  duration = Time.now - startTime
  
  puts descriptionOfBlock+':  '+duration.to_s+' сек.'
end

profile '25000 удваиваний' do
  number = 1
  
  25000.times do
    number = number + number
  end
  
  puts number.to_s.length.to_s+' цифр' # Да, это число цифр в таком ГИГАНТСКОМ числе.
end

profile 'сосчитать до миллиона' do
  number = 0
  
  1000000.times do
    number = number + 1
  end
end