colorArray = []  #  то же, что Array.new
colorHash  = {}  #  то же, что Hash.new

colorArray[0]       = 'red'
colorArray[1]       = 'green'
colorArray[2]       = 'blue'
colorHash['strings']         = 'red'
colorHash['numbers']          = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end