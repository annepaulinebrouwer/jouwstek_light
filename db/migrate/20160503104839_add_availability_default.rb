class AddAvailabilityDefault < ActiveRecord::Migration
  def change
    change_column_default :gardens, :available, true
  end
end
