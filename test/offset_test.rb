require './lib/offset'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_has_attributes
    offset = Offset.new
    expected = Time.now.strftime("%m%d%y").to_i
    assert_equal expected, offset.date_num
  end
end
