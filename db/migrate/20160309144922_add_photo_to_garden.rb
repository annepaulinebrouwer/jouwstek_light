class AddPhotoToGarden < ActiveRecord::Migration
  def change
    add_column :gardens, :photo, :string
  end
end
