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
  
  a = []
  while a.size < 5 do a << 1 end
    
  h = {us:"doller", india:"rupee"}
  {japan:"yen", **h}
  
text = "私の誕生日は1977年7月17日です。"
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/=~text
  puts "#{year}#{month}#{day}"
end 
m[1]
m[2]
m[3]

"123 456 789".scan(/\d+/)
"1977年7月17日 2016年12月31日".scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)

text = "誕生日は1977年7月17日です"
text.gsub(/(\d+)年(\d+)月(\d+)日/,"\1-\2-\3")


class User
  attr_ :name

  def initialize(name)
  @name = name
  end
end


user = User.new("Alice")
user.name
user.name = "Bob"

class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end 
end 

product = Product.new("A free movie")
product.price 

class Tempo
  include Comparable
  
  attr_reader :bpm
  
  def initialize(bpm)
    @bpm = bpm
  end
  
  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end
  
  def inspect
    "#{bpm}bpm"
  end 
end 

module Loggable 
	def log(text)
		puts "[LOG]#{text}"
	end
end

s = "abc"

# 文字列は通常logメソッドを持たない。
s.log("Hello.") #=>エラー
s.extend(Loggable) #=>文字列sにLoggableモジュールのメソッドを特異メソッドとしてミックスインする。
s.log("Hello.") #=>[LOG]Hello.


module Baseball

	class Second
		def initialize(player, uniform_number)
			@player = player
			@uniform_number = uniform_number
		end
	end
end

module Clock
	class Second
		def initialize(digits)
			@digits = digits
		end
	end
end



module StringShuffle

	refine String do
		def shuffle
			chars.shuffle.join
		end
	end
end

"Alice".shuffle
#=> エラー

class User
# refinementsを有効化する。
	useing StringShuffle

	def initialize(name)
		@name = name
	end
	
	def shuffled_name
		@name.shuffle
	end
end

user = User.new("Alice")
user.shuffled_name
#=> "cliAe"

