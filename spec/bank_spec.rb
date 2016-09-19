require 'bank'

describe Bank do
  subject(:bank) {described_class.new}

  describe '#initialize' do
    context 'when first created' do
      it 'has a balance of zero' do
        expect(bank.balance).to eq 0
      end
    end
  end

  describe 'make_deposit' do
    it 'increases the balance by the amount of the deposit' do
      bank.make_deposit(1000)
      expect(bank.balance).to eq 1000
    end
  end

  describe 'make_withdrawal' do
    it 'decreases the balance by the amount of the withdrawal' do
      bank.make_deposit(1000)
      bank.make_withdrawal(500)
      expect(bank.balance).to eq 500
    end
  end


end
