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


# def currency_of(country)
#  case country
#  when :japan
#   puts "yen"
#  when :us
#   puts "doller"
#  when :india
#   puts "rupee"
#  else
#   raise "無効な国名です。 #{country}"
#  end 
# end 
 
#  currency_of(:japan)
#  currency_of(:italy)
 
# require "date"
# def convert_heisei_to_date(heisei_text)

# 	m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
# 	year = m[:jp_year].to_i + 1988
# 	month = m[:month].to_i
# 	day = m[:day].to_i

# 	begin
# 		Date.new(year, month, day)
# 	rescue ArgumentoError
# 	# 例外が起きたらnilを返したい
# 		nil
# 	end
# end

# puts convert_heisei_to_date("平成5年9月15日")


class NoCountryError < StandardError
# 独自のクラス名を与えるのが目的なので、実装コードは特に書かない。
# (継承だけで済ませる。)
end

def currency_of(country)
 case country
 when :japan
  puts "yen"
 when :us
  puts "doller"
 when :india
  puts "rupee"
 else
  raise NoCountryError, "無効な国名です。 #{country}"
 end 
end 
 
 currency_of(:italy) #=> NoCountryError: 無名な国名です。italy
