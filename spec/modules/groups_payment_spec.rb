require 'rails_helper'

RSpec.describe GroupsPayment, type: :model do
  describe 'Validations' do
    before do
      @user = User.create(name: 'John')
      @group = Group.create(name: 'Group1', icon: 'https://images.unsplash.com/photo-1629295607202-d13e19604c34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80')
      @payment = Payment.create(name: 'MC', amount: 100, user_id: @user.id)
      @group_payment = GroupsPayment.create(group_id: @group.id, payment_id: @payment.id)
    end
    it 'should be valid with valid attributes' do
      expect(@group_payment).to be_valid
    end
  end
end
