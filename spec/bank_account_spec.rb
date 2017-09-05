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
    it 'transactions have a date' do
      subject.credit(1000)
      subject.credit(2000)
      subject.debit(500)
      expect(subject.transaction).to eq [{:date=>"09/05/2017", :credit=>1000, :debit=>0, :balance=>1000}, {:date=>"09/05/2017", :credit=>2000, :debit=>0, :balance=>3000}, {:date=>"09/05/2017", :credit=>0, :debit=>500, :balance=>2500}]
   end
 end

   describe '#date' do
     it 'has a date' do
       expect(subject.date).to eq "09/05/2017"
     end
   end

   describe '#print_transactions' do
     it 'prints transactions' do
       subject.credit(1000)
       expect do
         subject.print_transactions
       end.to output("09/05/2017 || 1000   || 0     || 1000\n").to_stdout
     end
   end

   describe '#print_header' do
     it 'prints a header' do
       expect do
         subject.print_header
       end.to output("Date       || Credit || Debit || Balance\n").to_stdout
     end
   end

   describe '#print_divider' do
     it 'prints a divider' do
       expect do
         subject.print_divider
       end.to output("----------------------------------------\n").to_stdout
     end
   end
end
