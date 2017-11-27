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

end
