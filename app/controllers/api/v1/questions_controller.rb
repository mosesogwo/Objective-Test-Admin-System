module Api
  module V1
    class QuestionsController < ApplicationController
      # before_action :verify_test_creator

      def create
        byebug
        question = Question.new(q_params)
        if question.save
          render json: { status: 'SUCCESS', message: 'Question saved', data: question }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, question was not saved', data: question.errors }, status: :unprocessable_entity
        end
      end

      def update
        question = Question.find(params[:id])
        if question && question.update(q_params)
          render json: { status: 'SUCCESS', message: 'Question updated', data: question }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, question was not updated', data: question.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        question = Question.find(params[:id])
        if question && question.destroy
          render json: { status: 'SUCCESS', message: 'Question deleted', data: question }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, question was not deleted', data: question }, status: :not_found
        end
      end

      private

      def q_params
        q_keys = params.try(:fetch, :q_options, {}).keys
        params.permit(:test_id, :q_text, :q_answer, q_options: q_keys)
      end
      
    end
  end
end
