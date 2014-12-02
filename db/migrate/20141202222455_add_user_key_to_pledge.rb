class AddUserKeyToPledge < ActiveRecord::Migration
  def change
  	change_table :pledges do |t|
  		t.belongs_to :backer
  	end
  end
end
