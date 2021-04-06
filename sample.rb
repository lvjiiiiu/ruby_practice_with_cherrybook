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


# class NoCountryError < StandardError
# # 独自のクラス名を与えるのが目的なので、実装コードは特に書かない。
# # (継承だけで済ませる。)
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
#   raise NoCountryError, "無効な国名です。 #{country}"
#  end 
# end 
 
#  currency_of(:italy) #=> NoCountryError: 無名な国名です。italy

# def greeting_ja(&block)
#   texts = ["おはよう", "こんにちは", "こんばんは"]
#   greeting_common(texts, &block)
# end
 
# def greeting_en(&block)
#   texts = ["good morinig", "hello", "good evening"]
#   greeting_common(texts, &block)
# end 
 
# def greeting_common(texts, &block)
#   puts texts[0]
#   puts block.call(texts[1])
#   puts texts[2]
# end
 
# greeting_ja do |text|
#   text * 2
# end 
 
# greeting_en do |text|
#   text.upcase
# end 
 
# def greeting(&block)
#   puts "おはよう"
#   text = 
#   if block.arity == 1
#     yield "こんにちは"
#   elsif block.arity == 2
#     yield "こんに", "ちは"
#   end 

#   puts text 
#   puts "こんばんは"
# end
 
# greeting do |text|
#   text * 2
# end 
 
# greeting do |text_1, text_2|
#   text_1 * 2 + text_2 *2 
# end 

 
# add_proc = Proc.new {|a = 0, b = 0| a + b }
# p add_proc.call
# p add_proc.call(10)
# puts add_proc.call(10, 20)


# def greeting(arrange_proc)
#   puts "おはよう"
#   text = arrange_proc.call("こんにちは")
#   puts text 
#   puts "こんばんは"
# end 

# repeat_proc = Proc.new{|text| text * 2}
# greeting(repeat_proc)


def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call("おはよう")
  puts proc_2.call("こんにちは")
  puts proc_3.call("こんばんは")
end 

shuffle_proc = Proc.new {|text|text.chars.shuffle.join}
repeat_proc = Proc.new {|text|text * 2}
question_proc = Proc.new {|text| "#{text}?"}
greeting(shuffle_proc, repeat_proc, question_proc)