class BankAccount
  attr_reader :balance, :transaction
  def initialize
    @balance = 0
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

  def date
    date = Time.new
    date.strftime('%m/%d/%Y')
  end

  def transactions(credits, debits)
    # credit_zero = 0
    # debits_zero = 0
    @transaction.push(date: date, credit: credits, debit: debits, balance: @balance)
  end

  def pretty_print
    returns = @transaction.map do |each|
      "#{each[:date]} || #{each[:credit]}   || #{each[:debit]}     || #{each[:balance]}"
    end
    puts "Date       || Credit || Debit || Balance"
    puts "----------------------------------------"
    returns.reverse.each do |each|
      puts each
    end
  end
end


ab = BankAccount.new
ab.credit(1000)
ab.credit(2000)
ab.debit(500)
p ab.balance
p ab.transaction
ab.pretty_print
p ab.date
