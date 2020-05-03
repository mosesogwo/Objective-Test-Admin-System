module Api
  module V1    
    class TestsController < ApplicationController
      def index
        tests = Test.all
        render json: {status: 'SUCCESS', message: 'All tests', data: tests }, status: :ok
      end

      def create
        test = Test.new(test_params)
        if test.save
          render json: { status: 'SUCCESS', message: 'Test created', data: test }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, test was not saved', data: test.errors }, status: :unprocessable_entity
        end
      end

      def update
        test = Test.find_by(id: params[:id])
        if test && test.update(test_params)
          render json: { status: 'SUCCESS', message: 'Test updated', data: test }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, test was not updated', data: test.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        test = Test.find_by(id: params[:id])
        if test && test.destroy
          render json: { status: 'SUCCESS', message: 'Test deleted', data: test }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, test was not deleted', data: test }, status: :not_found
        end
      end


      private

      def test_params
        params.permit(:title, :start_date, :end_date, :pass_score, :creator_id)
      end

    end
  end
end
