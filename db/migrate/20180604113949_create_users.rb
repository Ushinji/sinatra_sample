class CreateUsers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t| 
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps null: false, limit: 6
    end
  end
  def self.down
    drop_table :users
  end
end
