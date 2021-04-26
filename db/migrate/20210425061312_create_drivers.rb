class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.text :first_name
      t.text :last_name
      t.text :street
      t.text :suburb
      t.text :postcode
      t.text :state
      t.text :email
      t.string :password_digest
      t.text :phone
      
      t.text :bank_bsb_no
      t.text :bank_account_no
      t.integer :car_model_id
      t.text :driver_license_no

      t.timestamps
    end
  end
end