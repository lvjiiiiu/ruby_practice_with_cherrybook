require "minitest/autorun"
require "./lib/gate"
require "./lib/ticket"

class GateTest < Minitest::Test
  def test_gate
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    #150円のチケットを購入する
    ticket = Ticket.new(150)

    # 梅田で入場し、十三で出場する。
    umeda.enter(ticket)
    assert juso.exit(ticket)
    # 出場できることを期待している。→trueになればテストをパス
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end