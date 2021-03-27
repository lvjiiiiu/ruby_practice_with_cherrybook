require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

class GateTest < Minitest::Test
  
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end 
  
  def test_umeda_to_juso
    #150円のチケットを購入する
    ticket = Ticket.new(150)

    # 梅田で入場し、十三で出場する。
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
    # 出場できることを期待している。→trueになればテストをパス
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end 
  
  def test_umeda_to_mikuni_when_fare_is_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end
  
  def test_juso_to_mikuni
    ticket = Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end 
  
end


class User
  
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}!"
  end 
end


user = User.new("Alice")
user.hello

class User
  def hello
    "#{@name}さん、こんにちは"
  end
end 

user.hello


class User
  def self.hello
    "Hello"
  end 
  
  class << self
    def hi
      "Hi."
    end
  end


  alice ="I am alice"
  
  def alice.hello
    "Hello."
  end 
  
  class << alice
    def hi
     "Hi."
    end 
  end 
end 
