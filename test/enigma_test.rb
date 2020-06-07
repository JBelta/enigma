require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new
    #binding.pry
    assert_instance_of String, enigma.date
    assert_instance_of String, enigma.key
    assert_instance_of String, enigma.message
    assert_equal "", enigma.message
  end

end
