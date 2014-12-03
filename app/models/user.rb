class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: {minimum: 4}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
end
