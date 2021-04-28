class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :driver_id
      t.text :from_address
      t.text :to_address
      t.text :current_location
      t.time :start_time
      t.time :end_time
      t.float :estimated_price
      t.float :actual_price
      t.text :status, :default => 'new'
      t.decimal :from_latitude, precision:10, scale:6
      t.decimal :from_longitude, precision:10, scale:6
      t.decimal :to_latitude, precision:10, scale:6
      t.decimal :to_longitude, precision:10, scale:6
      t.decimal :current_latitude, precision:10, scale:6
      t.decimal :current_longitude, precision:10, scale:6

      t.decimal :latitude, precision:10, scale:6
      t.decimal :longitude, precision:10, scale:6

      t.timestamps
    end
  end
end
