class AddParentEmailToPic < ActiveRecord::Migration
  def self.up
    add_column :pics, :parent_email, :string
  end

  def self.down
    remove_column :pics, :parent_email
  end
end
