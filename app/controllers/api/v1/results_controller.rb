module Api
  module V1
    class ResultsController < ApplicationController
      
      def create
        result = Result.new(result_params)
        if result.save
          render json: { status: 'SUCCESS', message: 'Result compiled', data: result }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong', data: result.errors }, status: :unprocessable_entity
        end
      end

      private

      def result_params
        params.permit(:candidate_id, :test_id, :score, :remark)
      end
    end
  end
end
