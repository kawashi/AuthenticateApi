class Session < ApplicationRecord
  belongs_to :user

  class LoginFailed < StandardError; end

  def self.generate_key(user_id:, password:)
    user = User.find_by(user_id: user_id)
    if user.present? && user.password == password
      SecureRandom.urlsafe_base64(100)
    else
      raise LoginFailed, 'ログインに失敗しました。'
    end
  end
end
