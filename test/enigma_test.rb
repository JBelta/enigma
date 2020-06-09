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
    assert_instance_of String, enigma.date
    assert_instance_of String, enigma.key
    assert_instance_of String, enigma.message
    assert_instance_of Array, enigma.alphabet
    assert_instance_of Array, enigma.shift
    assert_equal "Hello World", enigma.message
  end

  def test_encrypt_given_key_and_date
    skip
    enigma = Enigma.new
    expected = enigma.args_are_instance_variables
    assert_instance_of Hash, expected
    assert_instance_of String, expected[:encryption]
    assert_equal expected[:encryption].length, enigma.message.length
  end

  def test_
    enigma = Enigma.new
    require "pry"; binding.pry
    assert_instance_of Enigma, enigma
  end
end
