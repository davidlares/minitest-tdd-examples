require 'minitest/autorun'

def first_name
  "David"
end

class TestName < MiniTest::Test
  # this should return David
  def test_name_returns_david
    assert_equal "David", first_name
  end
end
