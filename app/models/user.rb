class User < ActiveRecord::Base
  acts_as_ordered_taggable
  acts_as_ordered_taggable_on :interests
  scope :by_join_date, order("created_at DESC")
  authenticates_with_sorcery!

  validates :password, length: {minimum: 4}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  has_many :owned_projects, class_name: 'Project', foreign_key: 'owner_id'

  has_many :pledges, foreign_key: 'backer_id'
  has_many :backed_projects, through: :pledges, source: :project
end
