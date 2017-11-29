require 'statement'

describe 'Statement' do

  # it 'prints a list of transactions' do
  #   statement = Statement.new
  #   transactions = [{:date=>"29/11/2017", :credit=>100, :debit=>"N/A", :balance=>100}]
  #   expect(statement.print_all(transactions)).to eq '29/11/2017 || 100 || N/A || 100'
  # end

  it 'is initialized with a header' do
    statement = Statement.new
    expect(statement.header).to eq 'date || credit || debit || balance'
  end

end
