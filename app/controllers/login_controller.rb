class LoginController < ApplicationController
  def index
    begin
      @session_key = Session.create(user_id: params[:user_id], password: params[:password])
    rescue => e
      Rails.logger.error("Login Failed! #{e}")
      Rails.logger.error(e.backtrace.join("\n"))
      render status: :bad_request and return
    end
  end
end
