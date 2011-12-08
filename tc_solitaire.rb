require 'test/unit'
require_relative 'solitaire.rb'

class TestSolitaire < Test::Unit::TestCase

  def setup
    @solitaire = Solitaire.new
    @key = [4, 23, 10, 24, 8, 25, 18, 6, 4, 7, 20, 13, 19, 8, 16, 21, 21, 18, 24, 10]
    @plain_array = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    @encrypted_array = [7, 12, 14, 3, 17, 13, 10, 1,6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2]
    @plain_text = "CODEINRUBYLIVELONGER"
    @encrypted_text = "GLNCQMJAFFFVOMBJIYCB"
  end

  def test_filters_illegal_characters_and_upcases
    assert_equal("", @solitaire.filter(""))
    assert_equal("", @solitaire.filter("1"))
    assert_equal(@plain_text, @solitaire.filter("CODEINRUBYLIVELONGER"))
    assert_equal(@plain_text, @solitaire.filter("1CODE INRUB!YLIVeLONGER2"))
  end

  def test_converts_to_ascii_array
    assert_equal(@plain_array, @solitaire.to_ascii_array(@plain_text))
    assert_equal([1], @solitaire.to_ascii_array("A"))
    assert_equal([26], @solitaire.to_ascii_array("Z"))
  end

  def test_adds_key_and_modulo
    assert_equal(@encrypted_array, @solitaire.encrypt_key(@key, @plain_array))
    assert_equal([1], @solitaire.encrypt_key([1], [26]))
    assert_equal([26], @solitaire.encrypt_key([1], [25]))
  end

  def test_convert_from_ascii_array
    assert_equal(@plain_text, @solitaire.from_ascii_array(@plain_array))
    assert_equal("A", @solitaire.from_ascii_array([1]))
    assert_equal("Z", @solitaire.from_ascii_array([26]))
  end

  def test_subtracts_key
    assert_equal(@plain_array, @solitaire.decrypt_key(@key, @encrypted_array))
    assert_equal([26], @solitaire.decrypt_key([1], [1]))
    assert_equal([1], @solitaire.decrypt_key([1], [2]))
  end

  def test_encrypts
    assert_equal("", @solitaire.encrypt([], ""))
    assert_equal(@encrypted_text, @solitaire.encrypt(@key, @plain_text))
  end

  def test_decrypts
    assert_equal("", @solitaire.decrypt([], ""))
    assert_equal(@plain_text, @solitaire.decrypt(@key, @encrypted_text))
  end

end
