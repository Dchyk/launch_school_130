require 'minitest/autorun'
require_relative 'text'
require 'pry'

class TextTest < Minitest::Test
  def setup
    @sample_text = File.open('./sample_text.txt', 'r')
    @input_text = Text.new(@sample_text.read)
    @split = @input_text.text.split
  end

  def test_swap
    actual_text = @input_text.swap('a', 'e')
    expected_text = <<~TEXT
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT
    
    assert_equal(expected_text.count('e'), actual_text.count('e'))
  end

  def test_word_count
    assert_equal(@split.size, @input_text.word_count)
  end


  def teardown
    @sample_text.close
  end

end