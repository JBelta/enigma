require './lib/offset'
require './lib/key'
require './lib/shift'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_has_attributes
  shift = Shift.new
  assert_equal 5, shift.keys.count
  assert_equal 4, shift.offsets.count
  end
end
