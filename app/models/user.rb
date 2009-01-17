class User < ActiveRecord::Base
  has_many :user_groups
  has_many :groups, :through => :user_groups
  has_many :group_posts
  has_many :galleries
  has_many :pictures
  has_many :posts
  has_many :messages
  has_many :comments
end
