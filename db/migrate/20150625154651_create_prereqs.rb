class CreatePrereqs < ActiveRecord::Migration
  def change
    create_table :prereqs do |t|
      t.string :name
    end
  end
end
