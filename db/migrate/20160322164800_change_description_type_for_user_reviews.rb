class ChangeDescriptionTypeForUserReviews < ActiveRecord::Migration
  def up
    change_column :user_reviews, :description, :text
  end

  def down
    change_column :user_reviews, :description, :string
  end
end
