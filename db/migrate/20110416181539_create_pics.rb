class CreatePics < ActiveRecord::Migration
  def self.up
    create_table :pics do |t|
      t.integer :random_id
      t.string :school_name
      t.string :school_year
      t.integer :grade
      t.string :student_last_name
      t.string :student_first_name

      t.timestamps
    end
  end

  def self.down
    drop_table :pics
  end
end
