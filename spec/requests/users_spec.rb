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
    end

    context "with user logged out" do
    end
  end

  describe "DELETE /users/id" do
    context "with user logged in" do
    end

    context "with user logged out" do
    end
  end
end