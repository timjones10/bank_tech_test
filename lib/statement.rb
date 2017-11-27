class Statement

  attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print_all(transactions)
  transactions[0].values.join(' || ')
  # "date || credit || debit || balance"
  # puts string
  end

end
