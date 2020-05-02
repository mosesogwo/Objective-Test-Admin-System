require 'rails_helper'
RSpec.describe "Users", type: :request do
  let!(:valid_params) { { name: "User 1", email: "user1@gmail.com", password: 123456 } }
  let!(:invalid_params) { { name: "", email: "user1@gmail.com", password: 123456 } }
  let!(:test_user) { create(:user) }

  describe "POST /users" do
    context "with valid params" do
      it "returns a success response" do
        post "/api/v1/users", params: valid_params
        expect(response).to have_http_status(200)
      end
    end

    context "with invalid params" do
      it "returns an error(unprocessale_entity) response" do
        post "/api/v1/users", params: invalid_params
        expect(response).to have_http_status(422)
      end
    end

  end

  describe "PATCH /users/id" do
    context "with user logged in" do
      it "successfully edits the user with valid params" do
        # post '/api/v1/authenticate', params: {email: test_user.email, password: test_user.password }
        # auth_token = JSON.parse(response.body)["auth_token"]
        # request.headers['Authorization'] = auth_token
        # patch "/api/v1/users/#{test_user.id}", params: valid_params
        # JSON.parse(response)
        # expect(response).to have_http_status(200)
      end

      it "fails to edit user with invalid params" do
      end
    end

    context "with user logged out" do
      it "returns authorization error" do
        patch "/api/v1/users/#{test_user.id}", params: valid_params
        expect(response).to have_http_status(401)
      end
    end
  end

  describe "DELETE /users/id" do
    context "with user logged in" do
      it "successfully deletes the user" do
        
      end
    end

    context "with user logged out" do
      it "returns an authorization error" do
        delete "/api/v1/users/#{test_user.id}"
        expect(response).to have_http_status(401)
      end
    end
  end
  
end