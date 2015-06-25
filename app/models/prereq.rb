class Prereq < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :course_prereqs
  has_many :courses, through: :course_prereqs
end