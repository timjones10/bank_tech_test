require 'Account'

describe 'Account' do

  account = Account.new

  it 'is initialized with a balance set to the default of 0' do
    expect(account.balance).to eq 0
  end

  it 'has a method to add funds to the Account' do
    account.add_funds(100)
    expect(account.balance).to eq 100
  end

  it 'has a method to withdraw funds to the Account' do
    account = Account.new
    account.add_funds(100)
    account.withdraw(50)
    expect(account.balance).to eq 50
  end

  it 'has a fail error in place to prevent withdrawal of funds below 0' do
    account = Account.new
    expect {account.withdraw(50)}.to raise_error "Insufficient Funds"
  end

  it 'has a save_transaction which saves details of each withdrawal or credit' do
    account = Account.new
    account.add_funds(100)
    expect(account.transactions.length).to eq 1
  end

  it 'has a get_date method which generates the current date' do
    expect(account.get_date).to eq '27/11/2017'
  end

  it 'save_transaction method saves the date alongside with the amount' do
        account = Account.new
        account.add_funds(100)
        account.save_transaction(100)
        expect(account.transactions[0]).to eq ({:date => '27/11/2017', :credit => 100})
  end

  it 'has add_funds method call save_transaction' do
    account = Account.new
    account.add_funds(100)
    expect(account.transactions.length).to eq 1
  end

  it 'has a statement upon initialization' do
    expect(account.statement).to be_an_instance_of(Statement)
  end

end
