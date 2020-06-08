require "./lib/shiftable"
require "./lib/enigma"
require "minitest/autorun"
require "minitest/pride"

class ShiftableTest < Minitest::Test
  include Shiftable

  def test_key_pairs_work_on_strings
    key = "02715"
    assert_equal ["02", "27", "71", "15"], key_pairs(key)
  end

  def test_sum_keys_and_offsets
    key = key = "02715"
    keys = key_pairs(key)
    offsets = "040895"
    assert_equal [3, 27, 73, 20], sum_keys_and_offsets(keys, offsets)
  end
end
