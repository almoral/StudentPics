class Pic < ActiveRecord::Base

	attr_accessible :random_id, :school_name, :school_year, :grade, :homeroom, :student_first_name, :student_last_name, :email, :active_status

end
