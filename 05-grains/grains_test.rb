#!/usr/bin/env ruby
# grains_test.rb
require 'minitest/autorun'
require_relative 'grains'

class GrainsTest < Minitest::Test
  def test_square_1
    assert_equal 1, Grains.square(1)
  end

  def test_square_2
    # Removed skip directive
    assert_equal 2, Grains.square(2)
  end

  def test_square_3
    # Removed skip directive
    assert_equal 4, Grains.square(3)
  end

  def test_square_4
    # Removed skip directive
    assert_equal 8, Grains.square(4)
  end

  def test_square_16
    # Removed skip directive
    assert_equal 32_768, Grains.square(16)
  end

  def test_square_32
    # Removed skip directive
    assert_equal 2_147_483_648, Grains.square(32)
  end

  def test_square_64
    # Removed skip directive
    assert_equal 9_223_372_036_854_775_808, Grains.square(64)
  end

  def test_total_grains
    # Removed skip directive
    assert_equal 18_446_744_073_709_551_615, Grains.total
  end
end