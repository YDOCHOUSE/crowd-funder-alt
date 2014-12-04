class Project < ActiveRecord::Base

	belongs_to :owner, class_name: 'User'
	has_many :backers, through: :pledges, class_name: 'User'
	has_many :rewards
	has_many :pledges
	
	def total_amount_raised
      pledges.sum(:amount)
	end
	accepts_nested_attributes_for :rewards
end
