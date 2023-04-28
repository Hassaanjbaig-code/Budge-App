require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'Validations' do
    before do
      @user = User.create(name: 'John')
      @payment = Payment.create(name: 'MC', amount: 100, user_id: @user.id)
    end
    it 'should have a name' do
      expect(@payment.name).to be_present
    end
    it 'should have a unique name' do
      expect(@payment.name).to eq('MC')
    end
    it 'should have an amount' do
      expect(@payment.amount).to be_present
    end
    it 'should have a amount of 100' do
      expect(@payment.amount).to eq(100)
    end
  end
end
