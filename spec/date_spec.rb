require 'date'

describe Date do

  describe '#date' do
    it 'has a date' do
      expect(subject.date).to eq "09/05/2017"
    end
  end
end
