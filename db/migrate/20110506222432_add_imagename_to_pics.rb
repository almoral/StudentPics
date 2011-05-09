class AddImagenameToPics < ActiveRecord::Migration
  def self.up
    add_column :pics, :IMAGENAME, :string
  end

  def self.down
    remove_column :pics, :IMAGENAME
  end
end
