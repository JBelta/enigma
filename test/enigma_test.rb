require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EnigmaTest < Minitest::Test
  include Shiftable
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new
    assert_instance_of String, enigma.date
    assert_instance_of String, enigma.random
    assert_instance_of String, enigma.message
    assert_instance_of Array, enigma.alphabet
  end

  def test_encrypt
    enigma = Enigma.new
    assert_instance_of String, enigma.encrypt("Hello")[:encryption]
    assert_instance_of String, enigma.encrypt("Hello")[:key]
    assert_instance_of String, enigma.encrypt("Hello")[:date]
  end
end
