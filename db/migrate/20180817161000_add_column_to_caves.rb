class AddColumnToCaves < ActiveRecord::Migration[5.1]
  def change
  	add_column :caves, :cafename, :string
  	add_column :caves, :time, :string
  	add_column :caves, :recommend, :string
  	add_column :caves, :img_url, :string
  end
end
