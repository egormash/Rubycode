puts 'Здравствуйте! И спасибо, что Вы нашли время, чтобы'
puts 'помочь мне в этом исследовании.  Мое исследование'
puts 'связано с изучением того, как люди относятся к'
puts 'мексиканской еде. Просто думайте о мексиканской еде'
puts 'и попробуйте отвечать на все вопросы честно,'
puts 'только словами "да" или "нет".  Моё исследование'
puts 'не имеет ничего общего с ночным недержанием мочи.'
puts

#  Мы задаём эти вопросы, но игнорируем ответы на них.

goodAnswer = false
while (not goodAnswer)
  puts 'Вам нравится есть такос?'
  answer = gets.chomp.downcase
  if (answer == 'да' or answer == 'нет')
    goodAnswer = true
  else
    puts 'Пожалуйста, отвечайте "да" или "нет".'
  end
end

goodAnswer = false
while (not goodAnswer)
  puts 'Вам нравится есть бурритос?'
  answer = gets.chomp.downcase
  if (answer == 'да' or answer == 'нет')
    goodAnswer = true
  else
    puts 'Пожалуйста, отвечайте "да" или "нет".'
  end
end

#  Мы, однако, обращаем внимание на *этот* вопрос.
goodAnswer = false
while (not goodAnswer)
  puts 'Вы мочитесь в постель?'
  answer = gets.chomp.downcase
  if (answer == 'да' or answer == 'нет')
    goodAnswer = true
    if answer == 'да'
      wetsBed = true
    else
      wetsBed = false
    end
  else
    puts 'Пожалуйста, отвечайте "да" или "нет".'
  end
end

goodAnswer = false
while (not goodAnswer)
  puts 'Вам нравится есть чимичангас?'
  answer = gets.chomp.downcase
  if (answer == 'да' or answer == 'нет')
    goodAnswer = true
  else
    puts 'Пожалуйста, отвечайте "да" или "нет".'
  end
end

puts 'И ещё несколько вопросов...'

goodAnswer = false
while (not goodAnswer)
  puts 'Вам нравится есть сопапиллас?'
  answer = gets.chomp.downcase
  if (answer == 'да' or answer == 'нет')
    goodAnswer = true
  else
    puts 'Пожалуйста, отвечайте "да" или "нет".'
  end
end

#  Задайте много других вопросов о мексиканской еде.

puts
puts 'ПОЯСНЕНИЕ:'
puts 'Спасибо за то, что Вы нашли время, чтобы помочь'
puts 'этому исследованию.  На самом деле, это исследование'
puts 'не имеет ничего общего с мексиканской едой.  Это'
puts 'исследование ночного недержания мочи.  Мексиканская еда'
puts 'присутствовала только затем, чтобы усыпить Вашу бдительность'
puts 'в надежде, что Вы будете отвечать более'
puts 'правдиво.  Ещё раз спасибо.'
puts
puts wetsBed