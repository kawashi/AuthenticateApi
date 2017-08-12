class LoginController < ApplicationController
  def index
    begin
      @session_key = Session.generate_key(user_id: params[:user_id], password: params[:password])
    rescue => e
      Rails.logger.error("Login Failed! #{e}")
      Rails.logger.error(e.backtrace.join("\n"))
      render status: :bad_request and return
    end

    save_session
  end

  def check
    @session = Session.find_by(access_token: params[:access_token])
  end

  def save_session
    user = User.find_by(user_id: params[:user_id])
    Session.create(user: user, access_token: @session_key)
  end
end
