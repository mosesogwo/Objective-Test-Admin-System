module Api
  module V1
    class UsersController < ApplicationController

      def create
        user = User.new(user_params)
        if user.save
          render json: { status: 'SUCCESS', message: 'Account Successfully Created', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, account creation failed', data: user.errors }, status: :unprocessable_entity
        end
      end

      def edit
        user = User.find(params[:id])
        if user && user.update(user_params)
          render json: { status: 'SUCCESS', message: 'Account Successfully Modified', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, account modification failed', data: user.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        user = User.find(params[:id])
        if user && user.destroy
          render json: { status: 'SUCCESS', message: 'Account Successfully Deleted', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Something went wrong, account deletion failed', data: user.errors }, status: :not_found
        end
      end


      private

      def user_params
        params.permit(:name, :email, :password)
      end

    end
  end
end