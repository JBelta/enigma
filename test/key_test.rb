require './lib/key'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_it_has_attributes
  key = Key.new
  assert_equal String, key.numbers.class
  end

  def test_first_five
    key = Key.new
    keys = key.first_five
    assert_equal Array, keys.class
    assert_equal 5, keys.count
  end
end
