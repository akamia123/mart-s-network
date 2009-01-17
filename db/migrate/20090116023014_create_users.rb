class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :email
      t.string    :hash_password
      t.string    :salt
      t.string    :firstname
      t.string    :lastname
      t.string    :zipcode
      t.boolean   :banned
      t.boolean   :confirmed
      t.boolean   :conf
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
