class Domain < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :course_domains
  has_many :courses,  through: :course_domains
end