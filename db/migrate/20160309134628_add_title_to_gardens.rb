class AddTitleToGardens < ActiveRecord::Migration
  def change
    add_column :gardens, :title, :string
  end
end
