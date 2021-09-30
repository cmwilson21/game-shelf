class Player < ApplicationRecord
  has_secure_password
  has_many :games
  has_many :consoles, through: :games

  # validates_presence_of :username, :password
end
