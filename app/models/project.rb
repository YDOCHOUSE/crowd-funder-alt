class Project < ActiveRecord::Base
	# accepts_nested_attributes

	belongs_to :owner, class_name: 'User'
	has_many :backers, through: :pledges, class_name: 'User'
	has_many :rewards
end
