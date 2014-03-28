# rails generate model user full_name email password location bio:text

class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.string :location
      t.text :bio

      t.timestamps
    end

    add_index :users, :email, :unique => true
  end
end
