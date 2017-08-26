class ApplicationController < ActionController::API
  before_action :authentication

  def authentication
    return unless enable_auth?
    session = Session.find_by(access_token: params[:access_token])
    render status: :unauthorized and return if session.blank?
  end

  # 認証しない場合はこれをオーバーライドする
  def enable_auth?
    true
  end
end
