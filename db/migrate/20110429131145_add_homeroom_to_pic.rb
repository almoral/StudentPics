class AddHomeroomToPic < ActiveRecord::Migration
  def self.up
    add_column :pics, :homeroom, :string
  end

  def self.down
    remove_column :pics, :homeroom
  end
end
