class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :from, :class_name => "User"
end
