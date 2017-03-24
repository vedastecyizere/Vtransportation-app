class AddOrderComfirmStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :confirm_status, :boolean
  end
end
