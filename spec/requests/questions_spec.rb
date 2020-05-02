require 'rails_helper'

RSpec.describe "Questions", type: :request do
  let!(:test) { create :test }
  let!(:question1) { create :question }
  describe "POST /api/v1/tests/:test_id/questions" do
    context "with valid params" do
      it "returns a success response" do
        post "/api/v1/tests/#{test.id}/questions", params: question1
        expect(response).to have_http_status(200)
      end
    end

    context "with invalid params" do
      it "returns an error(unprocessable_entity) response" do

      end
    end
  end

  describe "PATCH /api/v1/tests/:test_id/questions/:id" do
    context "with valid params" do
      it "returns a success response" do
      end
    end

    context "with invalid params" do
      it "returns an error(unprocessable_entity) response" do

      end
    end
  end

  describe "DELETE /api/v1/tests/:test_id/questions/:id" do
    context "with creator logged_in" do
      it "returns a success response if question exists" do

      end

      it "returns an error response if question does not exist" do

      end
    end
  end
end