class Gallery < ActiveRecord::Base
  belongs_to :user
  has_many :pictures
  
  named_scope :visible, :conditions => {:visible => true}
end
