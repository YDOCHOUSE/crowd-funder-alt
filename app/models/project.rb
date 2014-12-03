class Project < ActiveRecord::Base

	belongs_to :owner, class_name: 'User'
	has_many :backers, through: :pledges, class_name: 'User'
	has_many :rewards
	
	accepts_nested_attributes_for :rewards
end
