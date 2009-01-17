class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.belongs_to  :user
      t.string      :name
      t.string      :description
      t.boolean     :visible, :default => true
      t.boolean     :friends_only, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
