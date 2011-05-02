class AddRandomIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :random_id, :integer
  end

  def self.down
    remove_column :users, :random_id
  end
end
