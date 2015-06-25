class CourseDomain < ActiveRecord::Base
  belongs_to :course
  belongs_to :domain
end