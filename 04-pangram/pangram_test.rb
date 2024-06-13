#!/usr/bin/env ruby
# encoding: utf-8
# pangram_test.rb
require 'minitest/autorun'
require_relative 'pangram'

class PangramTest < Minitest::Test
  def test_sentence_empty
    str = ''
    refute Pangram.is_pangram?(str)
  end

  def test_pangram_with_only_lower_case
    # Removed skip directive
    str = 'the quick brown fox jumps over the lazy dog'
    assert Pangram.is_pangram?(str)
  end

  def test_missing_character_x
    # Removed skip directive
    str = 'a quick movement of the enemy will jeopardize five gunboats'
    refute Pangram.is_pangram?(str)
  end

  def test_another_missing_character_x
    # Removed skip directive
    str = 'the quick brown fish jumps over the lazy dog'
    refute Pangram.is_pangram?(str)
  end

  def test_pangram_with_underscores
    # Removed skip directive
    str = 'the_quick_brown_fox_jumps_over_the_lazy_dog'
    assert Pangram.is_pangram?(str)
  end

  def test_pangram_with_numbers
    # Removed skip directive
    str = 'the 1 quick brown fox jumps over the 2 lazy dogs'
    assert Pangram.is_pangram?(str)
  end

  def test_missing_letters_replaced_by_numbers
    # Removed skip directive
    str = '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
    refute Pangram.is_pangram?(str)
  end

  def test_pangram_with_mixed_case_and_punctuation
    # Removed skip directive
    str = '"Five quacking Zephyrs jolt my wax bed."'
    assert Pangram.is_pangram?(str)
  end

  def test_pangram_with_non_ascii_characters
    # Removed skip directive
    str = 'Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.'
    assert Pangram.is_pangram?(str)
  end
end