class Account

DEFAULT_OPENING_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = DEFAULT_OPENING_BALANCE
  end

end
