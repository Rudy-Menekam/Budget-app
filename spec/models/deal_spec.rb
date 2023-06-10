require 'rails_helper'

RSpec.describe Deal, type: :model do
  describe 'Deal model' do
    before(:each) do
      @user = User.create name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
    end

    it 'accepts a valid name and amount' do
      deal = Deal.create! name: 'Pork ribs', amount: 13, author: @user
      expect(deal).to be_valid
    end
  end
end
