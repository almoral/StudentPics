class RenameColumn < ActiveRecord::Migration
  def self.up
  	rename_column :pics, :parent_email, :email
  end

  def self.down
  end
end
