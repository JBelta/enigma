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
    expected = enigma.encrypt("Hello World", "02715", "040895")
    assert_instance_of String, enigma.encrypt("Hello")[:encryption]
    assert_instance_of String, enigma.encrypt("Hello")[:key]
    assert_instance_of String, enigma.encrypt("Hello")[:date]
    assert_equal "keder ohulw", expected[:encryption]
    assert_equal "02715", expected[:key]
    assert_equal "040895", expected[:date]
  end

  def test_decrypt
    enigma = Enigma.new
    expected = enigma.decrypt("keder ohulw", "02715", "040895")
    assert_instance_of String, enigma.decrypt("anything")[:decryption]
    assert_instance_of String, enigma.decrypt("anything")[:key]
    assert_instance_of String, enigma.decrypt("anything")[:date]
    assert_equal "hello world", expected[:decryption]
    assert_equal "02715", expected[:key]
    assert_equal "040895", expected[:date]
  end
end
