class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :firstname
      t.string    :lastname
      t.string    :email
      t.string    :hash_password
      t.string    :salt
      t.string    :activation_hash
      t.string    :zipcode
      t.string    :city
      t.string    :state
      t.boolean   :banned
      t.boolean   :confirmed
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
