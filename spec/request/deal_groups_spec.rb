require 'rails_helper'

RSpec.describe 'DealGroup', type: :request do
  describe 'GET deal_groups#new' do
    before(:each) do
      user = User.create name: 'anonymus', email: 'anonymus@anon.co', password: 'password'
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      get new_deal_group_path
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(:new)
    end

    it 'should render the form for new deal addition' do
      expect(response.body).to include('NEW DEAL')
    end
  end
end
