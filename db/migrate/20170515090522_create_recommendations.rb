class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.text :content
      t.string :photo

      t.timestamps null: false
    end
  end
end
