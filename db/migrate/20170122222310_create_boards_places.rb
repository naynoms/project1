class CreateBoardsPlaces < ActiveRecord::Migration
  def change
    create_table :boards_places, :id => false do |t|
      t.integer :board_id
      t.integer :place_id
    end
  end
end
