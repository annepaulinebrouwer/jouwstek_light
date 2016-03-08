class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.string :description
      t.integer :stars
      # t.references :owner, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :owner_id

      t.timestamps null: false
    end

    add_foreign_key :user_reviews, :users, column: 'owner_id'
    add_index :user_reviews, :owner_id
  end
end
