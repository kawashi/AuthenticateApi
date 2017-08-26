class ImagePostController < ApplicationController
  def index
    @image_posts = ImagePost.all
  end

  def create
    image_post = ImagePost.new(image_post_paramters)
    image_post.save

    @image_url = image_post.image.url
  end

  private

  def image_post_paramters
    params.permit(:title, :message, :image)
  end

end
