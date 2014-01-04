class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_number
      t.string :first_name
      t.string :last_name
      t.string :home_city
      t.string :home_state
      t.string :home_country
      t.string :email
      t.string :user_name
      t.string :password
      t.string :security_question
      t.string :security_answer
      t.string :photo_link
    end
  end
end
