class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :request_number
      t.integer :user_number
      t.date :created_date
      t.date :needed_date
      t.time :time_needed
      t.string :delivery_city
      t.string :delivery_address
      t.text :delivery_instructions
      t.text :request_text
      t.string :underwear_type
      t.string :underwear_size
      t.string :underwear_color
      t.integer :underwear_quantity
      t.string :undershirt_type
      t.string :undershirt_size
      t.string :undershirt_color
      t.string :undershirt_quantity
      t.string :sock_type
      t.string :sock_size
      t.string :sock_color
      t.string :sock_quantity
    end
  end
end
