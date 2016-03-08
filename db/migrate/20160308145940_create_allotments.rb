class CreateAllotments < ActiveRecord::Migration
  def change
    create_table :allotments do |t|
      t.date :start_day
      t.string :request_status
      t.text :message
      t.references :garden, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
