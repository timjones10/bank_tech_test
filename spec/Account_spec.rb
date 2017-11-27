require 'Account'

describe 'Account' do

  account = Account.new

  it 'is initialized with a balance set to the default of 0' do
  expect(account.balance).to eq 0
  end

end
