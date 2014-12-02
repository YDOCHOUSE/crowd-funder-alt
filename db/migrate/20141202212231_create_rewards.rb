class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :amount
      t.integer :backer_limit

      t.timestamps
    end
  end
end
