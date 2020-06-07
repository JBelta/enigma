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
  assert_equal Offset, shift.offsets.class
  end

  def test_it_can_pair_keys
    shift = Shift.new
    example = shift.key_pairs
    assert_equal 4, example.count
    assert_equal Array, example.class
    assert_instance_of Array, shift.key_pairs
    assert_equal 4, shift.key_pairs.count
  end

  def test_add_key_pairs_with_offsets
  shift = Shift.new
  keys = shift.key_pairs
  offsets = shift.offsets.last_four
  sum = shift.sum_keys_and_offsets
  assert_equal 4, sum.count
  assert_equal sum[0], (keys[0].to_i + offsets[0].to_i)
  assert_equal sum[1], (keys[1].to_i + offsets[1].to_i)
  assert_equal sum[2], (keys[2].to_i + offsets[2].to_i)
  assert_equal sum[3], (keys[3].to_i + offsets[3].to_i)
  end
end
