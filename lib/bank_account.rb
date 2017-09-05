require_relative 'date'

class BankAccount
  attr_reader :balance, :transaction
  BALANCE = 0
  def initialize
    @balance = BALANCE
    @transaction = []
  end

  def credit(amount)
    @balance += amount
    transactions(amount, 0)
  end

  def debit(amount)
    @balance -= amount
    transactions(0, amount)
  end

  def transactions(credits, debits)
    @transaction.push(date: Date.new.date, credit: credits, debit: debits, balance: @balance)
  end

  def pretty_print
    print_header
    print_divider
    print_transactions
  end

  def print_transactions
    to_return = @transaction.map do |each|
      "#{each[:date]} || #{each[:credit]}   || #{each[:debit]}     || #{each[:balance]}"
    end
    to_return.reverse.each { |each| puts each }
  end

  def print_header
    puts "Date       || Credit || Debit || Balance"
  end

  def print_divider
    puts "----------------------------------------"
  end
end

ab = BankAccount.new
ab.credit(1000)
ab.credit(2000)
ab.debit(500)
p ab.balance
p ab.transaction
ab.pretty_print
