if @image_posts.blank?
  json.set! :status, 'Error'
else
  json.set! :status, 'OK'
  json.items (@image_posts) do |image_post|
    json.set! :title, image_post.title
    json.set! :message, image_post.message
    json.set! :image, image_post.image.url
  end
end
