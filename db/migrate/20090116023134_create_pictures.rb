class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.belongs_to :gallery
      t.belongs_to :user
      t.string     :description
      t.string     :filename
      t.string     :file_size
      t.boolean    :visible
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
