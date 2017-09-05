require 'bank_account'

describe BankAccount do
  describe '#balance' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'can increase and descrease balance' do
      subject.credit(100)
      subject.debit(50)
      expect(subject.balance).to eq 50
    end
  end

  describe '#credit' do
    it 'increases blanace' do
      subject.credit(100)
      expect(subject.balance).to eq 100
    end
  end

  describe '#debit' do
    it 'descreases balance' do
      subject.debit(100)
      expect(subject.balance).to eq -100
    end
  end

  describe '#transaction' do
    it 'creates a transaction' do
      subject.credit(1000)
      subject.credit(2000)
      subject.debit(500)
      expect(subject.transaction).to eq [{:credit=>1000, :debit=>0, :balance=>1000}, {:credit=>2000, :debit=>0, :balance=>3000}, {:credit=>0, :debit=>500, :balance=>2500}]
    end
   end

   describe '#date' do
     it 'has a date' do
       expect(subject.date).to eq "09/05/2017"
     end
   end
end
