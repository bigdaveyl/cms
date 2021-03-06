class CreatePostimages < ActiveRecord::Migration
  def change
    create_table :postimages do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.integer :post_id

      t.timestamps
    end
  end
end
