require 'bank_account'

describe BankAccount do
  describe '#balance' do
    it 'has a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#credit' do
    it 'increases blanaces' do
      subject.credit(100)
      expect(subject.balance).to eq 100
    end
  end
end
