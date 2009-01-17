class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.belongs_to    :user
      t.string        :title
      t.text          :body
      t.boolean       :commentable
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
