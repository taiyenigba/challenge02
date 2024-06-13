#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'leap'

class Date
  def leap?
    throw "Implement this yourself instead of using Ruby's implementation."
  end

  alias gregorian_leap? leap?
  alias julian_leap? leap?
end

class YearTest < Minitest::Test
  def test_leap_year
    assert Year.leap?(1996), "Expected 'true', 1996 is a leap year."
  end

  def test_standard_and_odd_year
    # Removed skip directive
    refute Year.leap?(1997), "Expected 'false', 1997 is not a leap year."
  end

  def test_standard_even_year
    # Removed skip directive
    refute Year.leap?(1998), "Expected 'false', 1998 is not a leap year."
  end

  def test_standard_nineteenth_century
    # Removed skip directive
    refute Year.leap?(1900), "Expected 'false', 1900 is not a leap year."
  end

  def test_standard_eighteenth_century
    # Removed skip directive
    refute Year.leap?(1800), "Expected 'false', 1800 is not a leap year."
  end

  def test_leap_twenty_fourth_century
    # Removed skip directive
    assert Year.leap?(2400), "Expected 'true', 2400 is a leap year."
  end

  def test_leap_y2k
    # Removed skip directive
    assert Year.leap?(2000), "Expected 'true', 2000 is a leap year."
  end
end