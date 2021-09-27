class Player < ApplicationRecord
  has_secure_password
  has_many :games
  has_many :consoles, through: :games
end
