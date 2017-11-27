class Statement

  attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print_all(transactions)
  puts header
  transactions[0].values.join(' || ')
  end

end
