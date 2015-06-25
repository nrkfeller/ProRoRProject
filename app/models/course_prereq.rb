class CoursePrereq < ActiveRecord::Base
  belongs_to :course
  belongs_to :prereq
end