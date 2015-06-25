class CreateCoursePrereqs < ActiveRecord::Migration
  def change
    create_table :course_prereqs do |t|
      t.integer :prereq_id, :course_id
    end
  end
end