class SetDefaultStatusRequest < ActiveRecord::Migration
  def change
    change_column_default :allotments, :request_status, "pending"
  end
end
