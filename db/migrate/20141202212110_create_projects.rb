class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :funding_goal
      t.text :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
