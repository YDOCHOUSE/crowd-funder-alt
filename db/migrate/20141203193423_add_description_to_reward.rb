class AddDescriptionToReward < ActiveRecord::Migration
  def change
  	add_column :rewards, :description, :text_area
  end
end
