require_relative 'data_source'
require 'test/unit'

class ComputerTest < Test::Unit::TestCase
  def setup
    @computer = Computer.new(35, DS.new)
  end
  
  def test_returns_a_printable_description
    assert_equal "Mouse: Wireless Touch ($60)", @computer.mouse
  end
  
  def test_marks_expensive_items_with_an_asterisk
    assert_equal "* Cpu: 2.9 Ghz quad-core ($120)", @computer.cpu
  end

  def test_keyboard
    assert_equal  "Keyboard: Standard US ($20)", @computer.keyboard
  end

  def test_display
    assert_equal "* Display: LED 1980x1024 ($150)", @computer.display
  end
end
