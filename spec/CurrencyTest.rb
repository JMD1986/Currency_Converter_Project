require "minitest/autorun"
require_relative '../lib/Currency.rb'

class CurrencyTest < Minitest::Test

  def test_does_Currency_exist
    assert(Currency)
  end

  def test_Currency_includes_amount
    assert(Currency.new.amount_and_code.has_key?(:amount), "not found")
  end

  def test_currency_includes_code
    assert(Currency.new.amount_and_code.has_key?(:code), "not found")
  end
end


