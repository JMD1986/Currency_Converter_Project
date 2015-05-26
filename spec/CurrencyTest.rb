require "minitest/autorun"
require_relative '../lib/currency'

class CurrencyTest < Minitest::Test

  def test_currency_exists
    assert(Currency)
  end

  def test_currency_takes_input
    test = Currency.new('USD', 420.69)
    assert_equal('USD', test.code)
    assert_equal(420.69, test.amount)
  end

  def test_currency_objects_are_the_same
    currency1 = Currency.new('EUR', 420)
    currency2 = Currency.new('EUR', 420)
    assert_equal(currency1.code, currency2.code)
    assert_equal(currency2.amount, currency2.amount)
  end

  def test_currency_objects_are_differentiated
    currency1 = Currency.new('EUR', 420)
    currency2 = Currency.new('USD', 69)
    refute_equal(currency1.code, currency2.code)
    refute_equal(currency1.amount, currency2.amount)
  end

  def test_same_codes_with_different_values_arent_equal
    currency1 = Currency.new('EUR', 420)
    currency2 = Currency.new('USD', 69)
    test = currency1 == currency2
    assert_equal(false, test)
  end

  def test_addition_method_works
    currency1 = Currency.new('USD', 420)
    currency2 = Currency.new('USD', 69)
    test = currency1 + currency2
    assert_equal(489, test)
  end

  def test_subtraction_method_works
    currency1 = Currency.new('USD', 420)
    currency2 = Currency.new('USD', 69)
    test = currency1 - currency2
    assert_equal(351, test)
  end

  def test_error_gets_thrown_for_different_code
    currency1 = Currency.new('EUR', 420)
    currency2 = Currency.new('USD', 420)
    assert_raises(DifferentCurrencyCodeError){currency1 - currency2}
  end

  def test_multiply_method_returns_correct_value
    currency = Currency.new('USD', 420)
    assert_equal(Currency.new('USD', 28980), (currency * 69))
  end

  def test_multiplier_float_returns_new_object
    currency = Currency.new('USD', 420.00)
    assert_equal(Currency.new('USD', 28980.00), (currency * 0.69))
  end
end
