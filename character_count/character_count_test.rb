gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'character_count.rb'
require 'pry'

class CharacterCountTest < Minitest::Test
  def test_it_can_convert_a_letter_to_hash
    ch = CharacterCount.new
    result = ch.s_to_h('a')
    assert_equal ({'a' => 1}), result
  end


  def test_it_can_count_a_letter
    ch = CharacterCount.new
    to_hash = ch.s_to_h('a')
    to_string = ch.h_to_s(to_hash)

    assert_equal 'a: 1', to_string
  end

  def test_it_can_count_many_equal_letters
    ch = CharacterCount.new
    to_hash = ch.s_to_h('aaa')
    to_string = ch.h_to_s(to_hash)
    assert_equal 'a: 3', to_string
  end

  def test_it_can_convert_a_string_to_hash
    ch = CharacterCount.new
    to_hash = ch.s_to_h('aabbb')
    to_string = ch.h_to_s(to_hash)
    assert_equal "a: 2 b: 3", to_string
  end

  def test_it_can_analyze_a_string_w_many_letters_to_hash
    ch = CharacterCount.new
    to_hash = ch.s_to_h('aabbbc')
    to_string = ch.h_to_s(to_hash)
    assert_equal "a: 2 b: 3 c: 1", to_string
  end

  def test_it_can_analyze_a_sentence
    ch = CharacterCount.new
    to_hash = ch.s_to_h('I really want to work for Wingspan')
    to_string = ch.h_to_s(to_hash)
    assert_equal "I: 1  : 6 r: 3 e: 1 a: 3 l: 2 y: 1 w: 2 n: 3 t: 2 o: 3 k: 1 f: 1 W: 1 i: 1 g: 1 s: 1 p: 1", to_string
  end

end
