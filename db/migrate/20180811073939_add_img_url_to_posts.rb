class AddImgUrlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :caves, :img_url, :string
  end
end
