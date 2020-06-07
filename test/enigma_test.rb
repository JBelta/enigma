require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new("message", Shift.new.keys, Shift.new.offsets)
    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new("message", Shift.new.keys, Shift.new.offsets)
    assert_instance_of Array, enigma.date
    assert_equal 4, enigma.date.count
    assert_instance_of Array, enigma.key
    assert_equal 5, enigma.key.count
    assert_instance_of String, enigma.message
    assert_equal "message", enigma.message
  end
end
