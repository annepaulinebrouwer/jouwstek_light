class AddEndDateToAllotment < ActiveRecord::Migration
  def change
    add_column :allotments, :end_day, :date
  end
end
