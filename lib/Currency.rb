class Currency
  attr_reader :amount, :code, :dollar
  def initialize(amount, code)
    @code = code
    @amount = amount
  end

def ==(other)
    if other.is_a?(Currency)
      if other.code == self.code
        return true
      else
        return false
      end
    else
      return false
    end
  end
end


