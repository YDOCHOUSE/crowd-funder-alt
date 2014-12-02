class AddProjectKeyToReward < ActiveRecord::Migration
  def change
  	change_table :rewards do |t|
  		t.belongs_to :project
  	end
  end
end
