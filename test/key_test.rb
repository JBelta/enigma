require './lib/key'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    require 'pry'; binding.pry
    assert_instance_of Key, key
  end

  def test_it_has_attributes
  key = Key.new
  assert_equal Array, key.numbers.class
  assert_equal 5, key.numbers.count
  end
end
