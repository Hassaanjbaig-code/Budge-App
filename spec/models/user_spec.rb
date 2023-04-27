require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before do
      @user = User.create(name: 'John')
    end
    it 'should have a name' do
      expect(@user.name).to be_present
    end
    it 'should have a unique name' do
      expect(@user.name).to eq('John')
    end
  end
end
