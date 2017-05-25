class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :header_1
      t.string :header_2
      t.string :background_image

      t.timestamps null: false
    end
  end
end
