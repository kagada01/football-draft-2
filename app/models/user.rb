class User < ApplicationRecord
  has_secure_password

  has_many :league_users
  has_many :leagues, through: :league_users
  has_one :my_team
end
