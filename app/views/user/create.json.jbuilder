if @session_key.blank?
  json.set! :status, 'Error'
  json.set! :message, 'Account Create Failed.'
else
  json.set! :status, 'OK'
  json.set! :access_token, @session_key
end