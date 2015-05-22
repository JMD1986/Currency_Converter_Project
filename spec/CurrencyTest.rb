require "minitest/autorun"
require_relative '../lib/Currency.rb'

class CurrencyTest < Minitest::Test

  def test_does_Currency_exist
    assert(Currency)
  end

  def test_objects_with_same_value_and_class
    dollar1 = Currency.new(100,:USD)
    dollar2 = Currency.new(100,:USD)
    assert(dollar1 == dollar2, nil)
  end

  def test_objects_with_same_code_but_different_amounts_arent_equal
    dollar1 = Currency.new(100, :USD)
    dollars3 = Currency.new(200, :USD)
    refute_equal(dollar1==dollars3, nil)
  end

  def test_more_objects_with_same_value_and_class
    bitcoin = Currency.new(50, :BTC)
    dollar2 = Currency.new(100, :USD)
    refute_equal(dollar2 == bitcoin, nil)
  end


end
