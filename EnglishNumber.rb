def englishNumber number
  if number < 0  #  ��� ������������� �����.
    return 'Please enter a positive number.'
  end
  if number == 0
    return 'zero'
  end
  
  #  ������ ��� ������ �������!  ������ ��� ��������� �� return!
  
  numString = ''  #  ��� ������ �� ����� ����������.
  
  #  �������
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  #  �������
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  #  "left" - ������� �� ����� ��� ��� �������� �������.
  #  "write"  - ����� �����, ������� �� ������� ������.
  #  write � left... ������?  :)
  left  = number
  write = left/100          #  ������� ����� �������� �������?
  left  = left - write*100  #  ������ ��� �����.
  
  if write > 0
    #  ��� ����� ������������� ������ �����:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    #  ��� ���������� "��������".  ��� ��� �� � ������ ��� ������?
    #  � ����� ����� ������ ������� ����, �� � ���������� "write" ������
    #  "number".  �������, ��� "write" ��� (� ��������� ������) �����
    #  �����, ������� ����� �������.  �������� "hundreds" � "numString",
    #  �� ��������� ����� �� ������ ' hundred'.  ���, ��������, ����
    #  �� ������� ������� englishNumber � 1999 (�.�. "number" = 1999),
    #  ����� � ���� ����� "write" ����� ����� 19, � "left" ����� 99.
    #  �������� ������ � ���� ����� ���� �� ��������� englishNumber
    #  ������� ��� 'nineteen', � ����� �� ������� ' hundred',
    #  � ����� ���������� ����� englishNumber ������� 'ninety-nine'.
    
    if left > 0
      #  ���, �� �� ������� 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  write = left/10          #  ������� �������� �������� �������?
  left  = left - write*10  #  ������ ��� �������.
  
  if write > 0
    if ((write == 1) and (left > 0))
      #  ��������� �� �� ����� ������� "tenty-two" ������ "twelve",
      #  ��� ����� ������� ��� ��� ������ ���������.
      numString = numString + teenagers[left-1]
      #  "-1" ����� ������, ��� teenagers[3] ��� 'fourteen', � �� 'thirteen'.
      
      #  ��������� ��� �� ������������ � ����� ��� ������,
      #  ��� �� �������� ������ ��� ������.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  "-1" ������, ��� tensPlace[3] ��� 'forty', � �� 'thirty'.
    end
    
    if left > 0
      #  ���, �� �� ������� 'sixtyfour'...
      numString = numString + '-'
    end
  end
  
  write = left  #  ������� ������ �������� �������?
  left  = 0     #  ������ ��� �������.
  
  if write > 0
    numString = numString + onesPlace[write-1]
    #  "-1" ������, ��� onesPlace[3] ��� 'four', � �� 'three'.
  end
  
  #  � ������ �� ������ ���������� "numString"...
  numString
end
puts englishNumber gets.chomp.to_i