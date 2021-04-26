class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :driver_id
      t.text :from_address
      t.text :to_address
      t.time :start_time
      t.time :end_time
      t.float :estimated_price
      t.float :actual_price
      t.text :status

      t.timestamps
    end
  end
end
