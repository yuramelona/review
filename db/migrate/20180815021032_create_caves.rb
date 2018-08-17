class CreateCaves < ActiveRecord::Migration[5.1]
  def change
    create_table :caves do |t|
      t.text :cafename
      t.text :time      
      t.text :recommend

      t.timestamps
    end
  end
end
