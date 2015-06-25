class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
    end
  end
end
