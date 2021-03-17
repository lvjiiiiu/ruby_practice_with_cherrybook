numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map do |n|
  n*10
end 

even_numbers = numbers.select {|n| n.even? }
even_numbers = numbers.reject {|n| n.even? }

sum = numbers.inject {|result, n| result + n}

def change(age)
  case age
  when 1..5
    0
  when 5..10
    300
  else 
    1000
  end 
end 
 
  (1..5).to
  
  
  
  def greeting(*names)
    "#{names.join('と')}、こんにちは！"
  end 
  greeting('田中さん')
  
    
  