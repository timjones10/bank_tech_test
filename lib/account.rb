require_relative 'statement'
require 'date'

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
    save_transaction({:date => get_date, :credit => amount, :debit => 'N/A',:balance => balance})
  end

  def withdraw(amount)
    fail "Insufficient Funds" if amount > balance
    @balance -= amount
    save_transaction({:date => get_date, :credit => 'N/A', :debit => amount,:balance => balance})
  end

  def save_transaction(transaction)
    transactions.push(transaction)
  end

  def get_statement
    statement.print_all(@transactions)
  end

  def get_date
    current_date = DateTime.now
    current_date.strftime "%d/%m/%Y"
  end

end
