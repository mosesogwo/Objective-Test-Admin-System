require 'rails_helper'

RSpec.describe 'Authentication', type: :request do

  describe 'POST /authenticate' do
    let(:user){ create(:user) }

    it 'returns success status for valid user credentials' do
      post "http://localhost:3000/api/v1/authenticate", params: { email: "#{user.email}", password: "#{user.password}" }
      expect(response).to have_http_status(200)
    end

    it 'returns error for invalid username' do
      post "http://localhost:3000/api/v1/authenticate", params: { email: "#{user.email}n", password: "#{user.password}" }
      result = JSON.parse(response.body)["error"]["user_authentication"]
      expect(result).to eq("Invalid Credentials")
    end

    it 'returns error for invalid password' do
      post "http://localhost:3000/api/v1/authenticate", params: { email: "#{user.email}", password: "#{user.password}n" }
      result = JSON.parse(response.body)["error"]["user_authentication"]
      expect(result).to eq("Invalid Credentials")
      end
  end

end
