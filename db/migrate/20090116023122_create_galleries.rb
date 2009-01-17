class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.belongs_to  :user
      t.string      :name
      t.boolean     :
      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
