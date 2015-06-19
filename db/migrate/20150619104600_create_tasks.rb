# require_relative '../config'
# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string :title
      t.string :object
      t.boolean :completed
      t.timestamps null: false
    end
  end
end