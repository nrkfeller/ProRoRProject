class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :course_id
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
    add_index :reviews, :course_id
  end
end
