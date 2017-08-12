if @session.blank?
  json.set! :status, 'Error'
  json.set! :message, 'アクセストークンが不正です。'
else
  json.set! :status, 'OK'
end
