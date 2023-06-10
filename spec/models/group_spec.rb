require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create name: 'Rita Daniel', email: 'rita@gmail.com', password: '123456'
    @group = Group.create(name: 'Test', user: @user)
    allow(@group.icon).to receive(:attached?).and_return(true)
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(@group).to be_valid
    end

    it 'is not valid without a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    # it 'is not valid without an icon' do
    #   allow(@group.icon).to receive(:attached?).and_return(false)
    #   expect(@group).to be_valid
    # end

    it 'is not valid without an author' do
      @group.user = nil
      expect(@group).to_not be_valid
    end
  end
end
