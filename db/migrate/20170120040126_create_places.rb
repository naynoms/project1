class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.text :country

      t.timestamps null: false
    end
  end
end
