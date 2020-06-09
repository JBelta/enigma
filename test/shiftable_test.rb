require "./lib/shiftable"
require "./lib/enigma"
require "minitest/autorun"
require "minitest/pride"

class ShiftableTest < Minitest::Test
  include Shiftable

  def test_key_pairs_work_on_strings
    rando = "02715"
    assert_equal ["02", "27", "71", "15"], key_pairs(rando)
  end

  def test_offset_array
    date = "040895"
    assert_equal ["1", "0", "2", "5"], offset_array(date)
  end

  def test_sum_keys_and_offsets
      rando = "02715"
      date = "040895"
      keys = key_pairs(rando)
      offsets = offset_array(date)
      assert_equal [3, 27, 73, 20], sum_keys_and_offsets(keys, offsets)
  end
end
