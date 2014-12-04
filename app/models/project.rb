class Project < ActiveRecord::Base

	validate :ensure_dates

	belongs_to :owner, class_name: 'User'
	has_many :backers, through: :pledges, class_name: 'User'
	has_many :rewards
	accepts_nested_attributes_for :rewards

	


private

def ensure_dates	
	if (start_date > end_date)
		errors.add(:end_date,": You Can't End Funding Before Beginning.")
	end

	if (start_date <= Time.now)
		errors.add(:start_date,": Funding cannot begin in the past.")
	end

	if (end_date <= Time.now)
		errors.add(:end_date,": Funding cannot end in the past!")
	end
end


end
