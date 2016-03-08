class CreateGardenReviews < ActiveRecord::Migration
  def change
    create_table :garden_reviews do |t|
      t.text :description
      t.integer :stars
      t.references :user, index: true, foreign_key: true
      t.references :allotment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
