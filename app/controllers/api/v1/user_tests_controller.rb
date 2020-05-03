module Api
  module V1
    class UserTestsController < ApplicationController

      def create
        new_test = UserTest.new(user_test_params)
        if new_test.save
          render json: {status: 'SUCCESS', message: 'Test created'}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Something went wrong'}, status: :unprocessable_entity
        end
      end

      private

      def user_test_params
        params.permit(:test_id, :candidate_id)
      end

    end
  end
end
