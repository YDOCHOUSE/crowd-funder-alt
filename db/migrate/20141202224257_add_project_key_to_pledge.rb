class AddProjectKeyToPledge < ActiveRecord::Migration
  def change
  	change_table :pledges do |t|
  		t.belongs_to :project
  	end
  end
end
