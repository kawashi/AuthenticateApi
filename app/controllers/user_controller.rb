class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      @session_key = Session.generate_key(user_id: params[:user_id], password: params[:password])
    else
      Rails.logger.error("Login Failed! #{e}")
      Rails.logger.error(e.backtrace.join("\n"))
      render status: :bad_request
    end
  end

  private

  def user_params
    params.permit(:name, :user_id, :password)
  end
end
