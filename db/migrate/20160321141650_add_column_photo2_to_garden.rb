class AddColumnPhoto2ToGarden < ActiveRecord::Migration
  def change
    add_column :gardens, :photo2, :string
    add_column :gardens, :photo3, :string
  end
end
