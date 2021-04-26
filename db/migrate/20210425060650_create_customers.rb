class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :street
      t.text :suburb
      t.text :postcode
      t.text :state
      t.text :email
      t.string :password_digest
      t.text :phone
      
      t.text :credit_card_no
      t.date :credit_card_expiry_date
      t.text :cvv

      t.timestamps
    end
  end
end