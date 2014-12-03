class AddOwnerKeyToProject < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
  		t.belongs_to :owner
  	end
  end
end
