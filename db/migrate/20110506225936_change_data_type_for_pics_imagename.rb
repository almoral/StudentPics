class ChangeDataTypeForPicsImagename < ActiveRecord::Migration
  def self.up
  	change_column :IMAGENAME do |i|
		i.change :string, :integer
  	end
  end

  def self.down
  end
end
