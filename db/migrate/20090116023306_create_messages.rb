class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.belongs_to  :user
      t.integer     :from
      t.string      :subject
      t.text        :body
      t.boolean     :to_visible
      t.boolean     :from_visible
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
