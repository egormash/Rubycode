def englishNumber number
  if number < 0  #  Ѕез отрицательных чисел.
    return 'Please enter a positive number.'
  end
  if number == 0
    return 'zero'
  end
  
  #  Ѕольше нет особых случаев!  Ѕольше нет возвратов по return!
  
  numString = ''  #  Ёту строку мы будем возвращать.
  
  #  единицы
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  #  дес€тки
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  #  "left" - сколько от числа нам ещЄ осталось вывести.
  #  "write"  - часть числа, которую мы выводим сейчас.
  #  write и left... пон€ли?  :)
  left  = number
  write = left/100          #  —колько сотен осталось вывести?
  left  = left - write*100  #  ¬ычтем эти сотни.
  
  if write > 0
    #  ¬от здесь действительно хитрый фокус:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    #  Ёто называетс€ "рекурси€".  “ак что же € только что сделал?
    #  я велел этому методу вызвать себ€, но с параметром "write" вместо
    #  "number".  ѕомните, что "write" это (в насто€щий момент) число
    #  сотен, которые нужно вывести.  ѕрибавив "hundreds" к "numString",
    #  мы добавл€ем после неЄ строку ' hundred'.  “ак, например, если
    #  мы сначала вызвали englishNumber с 1999 (т.е. "number" = 1999),
    #  затем в этой точке "write" будет равен 19, а "left" равен 99.
    #  Ќаиболее лениво в этом месте было бы заставить englishNumber
    #  вывести нам 'nineteen', а затем мы выведем ' hundred',
    #  и потом оставша€с€ часть englishNumber выведет 'ninety-nine'.
    
    if left > 0
      #  “ак, мы не выводим 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/10          #  —колько дес€тков осталось вывести?
  left  = left - write*10  #  ¬ычтем эти дес€тки.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  ѕоскольку мы не можем вывести "tenty-two" вместо "twelve",
      #  нам нужно сделать дл€ них особую обработку.
      numString = numString + teenagers[left-1]
      #  "-1" здесь потому, что teenagers[3] это 'fourteen', а не 'thirteen'.
      
      #  ѕоскольку уже мы позаботились о цифре дл€ единиц,
      #  нам не осталось ничего дл€ вывода.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  "-1" потому, что tensPlace[3] это 'forty', а не 'thirty'.
    end
    
    if left > 0
      #  “ак, мы не выводим 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  —колько единиц осталось вывести?
  left  = 0     #  ¬ычтем эти единицы.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  "-1" потому, что onesPlace[3] это 'four', а не 'three'.
  end
  
  #  ј теперь мы просто возвращаем "numString"...
  numString
end
puts englishNumber gets.chomp.to_i