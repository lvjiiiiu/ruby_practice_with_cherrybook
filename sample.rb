# puts "Start"
# module Greeter
# def hello
#   "hello"
# end
# end

# begin
#   greeter = Greeter.new
# rescue
#   puts "例外が発生したがこのまま続行する"
# end
  
#   puts "End."
 
 
#  def method_1
#    puts "method_1 start."
#    begin 
#      method_2
#    rescue
#      puts "例外が発生しました"
#    end
#    puts "method_1 end."
#  end
 
#  def method_2
#    puts "method_2 start."
#    method_3
#    puts "method_2 end."
   
#  end
 
#  def method_3
#    puts "method_3 start."
   
#    1 / 0
#    puts "method_3 end."
#  end
 
#  method_1
 
# begin
# 1 / 0
# rescue => e
# 	puts "エラークラス: #{e.class}"
# 	puts "エラーメッセージ: #{e.message}"
# 	puts "バックトレース____"
# 	puts e.backtrace
# 	puts "____"
# end


def currency_of(country)
 case country
 when :japan
  puts "yen"
 when :us
  puts "doller"
 when :india
  puts "rupee"
 else
  raise "無効な国名です。 #{country}"
 end 
end 
 
 currency_of(:japan)
 currency_of(:italy)
 
    
  