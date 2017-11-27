require 'account'
require 'statement'

describe 'Statement' do

  account = Account.new
  statement = Statement.new

  it 'prints a list of transactions' do
    account.add_funds(100)
    expect(account.get_statement).to eq '27/11/2017 || 100 || N/A || 100'
  end

  it 'is initialized with a header' do
    expect(statement.header).to eq 'date || credit || debit || balance'
  end

end
