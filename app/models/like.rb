class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  
  validates_uniqueness_of :user, scope: :course
end