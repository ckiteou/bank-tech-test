# Bank Tech Test

### Specification

#### Requirement

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see:

```
Date || Credit || Debit || Balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Getting started

Clone the repo:

```
$ git remote add origin https://github.com/ckiteou/bank-tech-test.git
$ cd 'bank-tech-test'
```

#### Usage

```
$ ab = BankAccount.new
$ ab.credit(1000)
$ ab.credit(2000)
$ ab.debit(500)
$ ab.pretty_print
```

#### Running tests

```
$ rspec
```
#### Authors
Costas Kiteou, **Makers Academy** - _Remote Cohort, July 2017_
