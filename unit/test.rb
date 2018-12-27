require 'minitest/autorun'
require './calc'

class TestCalc < MiniTest::Test

  def setup
    # executed before each test
    @calc = Calc.new(5,2)
  end

  # asserting methods
  def test_sum_both_numbers
    # calc = Calc.new(10,10)
    assert_equal 7, @calc.sum(), "Unexpected Result"
  end

  def test_division_both_numbers
    # calc = Calc.new(5,2)
    assert_equal 2.5, @calc.division(), "Unexpected Result"
  end

  def test_div_returns_float_number
    # calc = Calc.new(10,3)
    # class and object
    assert_instance_of Float, @calc.division()
  end

  def test_division_throws_error_if_zero
    assert_raises ZeroDivisionError do
      # ActiveRecordNotFound, etc
      # calc = Calc.new(10,0)
      @calc.y = 0
      @calc.division()
    end
  end

  def test_calc_should_respond_to_mult
    calc = Calc.new(10,0)
    assert_respond_to calc, :mult # as symbol, or string
  end

  # skipping test
  def test_mult_should_work
    skip "Future Feature, not Developed"
  end
end
