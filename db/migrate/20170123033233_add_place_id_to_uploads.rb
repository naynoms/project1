class AddPlaceIdToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :place_id, :integer
  end
end
