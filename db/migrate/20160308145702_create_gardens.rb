class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :description
      t.string :address
      t.boolean :available
      # t.references :owner, index: true, foreign_key: true
      t.integer :owner_id

      t.timestamps null: false
    end

    add_foreign_key :gardens, :users, column: 'owner_id'
    add_index :gardens, :owner_id
  end
end
