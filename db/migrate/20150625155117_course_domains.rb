class CourseDomains < ActiveRecord::Migration
  def change
    create_table :course_domains do |t|
      t.integer :domain_id, :course_id
    end
  end
end
