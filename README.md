## Makers Academy Practice Tech Test - Bank

##Tech Test Outline

The following practice tech test was done during Week 10 of Makers Academy.

The 'client requirements' are outlined at the link below'.

https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md

##Approach

Aim was to create the simplest solution to fulfil the requirements - then build on it.
I saw the Account and the Statement objects as the two key objects to fulfil client requirements.
The approach was largely successful but the implementation is incomplete.

##Code Structure

Two classes: Account and Statement. Account is the main class.

##How to run the tests

1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`
4. To run the tests run Rspec from the terminal while in the Project Directory.

##How to use the program

1. Require the account.rb file in Pry or another REPL
2. Create an account and test the functionality

```
[1] pry(main)> require './lib/account.rb'
=> true
[2] pry(main)> account = Account.new
=> #<Account:0x00007f8d0bb2af30
 @balance=0,
 @statement=
  #<Statement:0x00007f8d0bb2af08 @header="date || credit || debit || balance">,
 @transactions=[]>
[3] pry(main)> account.add_funds(100)
=> [{:date=>"27/11/2017", :credit=>100, :debit=>"N/A", :balance=>100}]
[4] pry(main)> account.add_funds(300)
=> [{:date=>"27/11/2017", :credit=>100, :debit=>"N/A", :balance=>100},
 {:date=>"27/11/2017", :credit=>300, :debit=>"N/A", :balance=>400}]
[5] pry(main)> account.withdraw(100)
=> [{:date=>"27/11/2017", :credit=>100, :debit=>"N/A", :balance=>100},
 {:date=>"27/11/2017", :credit=>300, :debit=>"N/A", :balance=>400},
 {:date=>"27/11/2017", :credit=>"N/A", :debit=>100, :balance=>300}]
[6] pry(main)> account.get_statement
date || credit || debit || balance
27/11/2017 || 100 || N/A || 100
27/11/2017 || 300 || N/A || 400
27/11/2017 || N/A || 100 || 300
=> nil
[7] pry(main)>
```

##Additional implementation

1. Fix the issue with iterating through the transactions array
2. Improve the testing of statement.
