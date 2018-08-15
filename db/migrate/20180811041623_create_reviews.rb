class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
