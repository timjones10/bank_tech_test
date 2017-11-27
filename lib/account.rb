class Account

  DEFAULT_OPENING_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = DEFAULT_OPENING_BALANCE
  end

  def add_funds(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Insufficient Funds" if amount > balance
    @balance -= amount
  end

end
