class Statement

  attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def print_all(transactions)
  transactions.each do |transaction|
    puts transaction.values.join(' || ')
  end
  end
end
