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

  def transactions(credits, debits)
    @transaction.push(credit: credits, debit: debits, balance: @balance)
  end
end
