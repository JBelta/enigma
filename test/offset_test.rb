require_relative 'test_helper'
require './lib/offset'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require 'pry'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_it_has_attributes
    offset = Offset.new
    expected = Time.now.strftime("%m%d%y")
    assert_equal expected, offset.date
    assert_instance_of Array, offset.numbers
    assert_equal 4, offset.numbers.count
  end
end
