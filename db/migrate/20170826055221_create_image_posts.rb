class CreateImagePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :image_posts do |t|
      t.string :title
      t.string :message
      t.string :image

      t.timestamps
    end
  end
end
