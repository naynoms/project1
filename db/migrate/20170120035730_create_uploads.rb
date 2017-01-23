class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :image
      t.text :information
      t.integer :board_id


      t.timestamps null: false
    end
  end
end
