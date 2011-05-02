class AddActiveStatusToPic < ActiveRecord::Migration
  def self.up
    add_column :pics, :active_status, :integer
  end

  def self.down
    remove_column :pics, :active_status
  end
end
