class Currency
  attr_reader :amount, :code, :amount_and_code
  def initialize
  @amount_and_code = { :amount => 1, :code => :USD}
  end
end
