require 'statement'

class Account

  DEFAULT_OPENING_BALANCE = 0

  attr_reader :balance, :transactions, :statement

  def initialize(statement = Statement.new)
    @balance = DEFAULT_OPENING_BALANCE
    @transactions = []
    @statement = statement
  end

  def add_funds(amount)
    @balance += amount
    save_transaction(amount)
  end

  def withdraw(amount)
    fail "Insufficient Funds" if amount > balance
    @balance -= amount
  end

  def save_transaction(amount)
    @transactions.push({:date => get_date, :credit => amount})
  end

  def get_date
    current_date = DateTime.now
    current_date.strftime "%d/%m/%Y"
  end


end
