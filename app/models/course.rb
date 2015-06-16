class Course < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: {minimum:9, maximum: 9 }
  validates :rating, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 500 }
end