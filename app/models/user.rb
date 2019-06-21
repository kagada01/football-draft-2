class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true 
  validates :password, presence: true
  validates :password, length: {in: 1..20}
  validates :username, length: {in: 3..20}
  validates :username, uniqueness: true  


  has_many :league_users
  has_many :leagues, through: :league_users
  has_one :my_team
  has_many :players, through: :my_team
end
