# �������� �� ���������: ���� ������ ���� ���� �� 1 ���� ��� �����������, �.�. ���� �������� ������, �� �������� ������� ��� ��� ���� ������ ��� (�� ��������� ���������� ����.)
puts 'Enter year of your birthday:'
year = gets.chomp.to_i
puts 'Enter month of your birthday:'
month = gets.chomp.to_i
puts 'Enter day of your birthday:'
day = gets.chomp.to_i
age = (Time.new - Time.mktime(year, month, day))/(60*60*24*365)
puts 'You are ' + age.to_i.to_s + ' years old.'