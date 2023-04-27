require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Validations' do
    before do
      @user = User.create(name: 'John')
      @group = Group.create(name: 'MC', icon: 'logo', user_id: @user.id)
    end
    it 'should have a name' do
      expect(@group.name).to be_present
    end
    it 'should have a unique name' do
      expect(@group.name).to eq('MC')
    end
    it 'should have an icon' do
      expect(@group.icon).to be_present
    end
    it 'should have an icon of logo' do
      expect(@group.icon).to eq('logo')
    end
  end
end
