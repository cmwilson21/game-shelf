class Console < ApplicationRecord
  has_many :games
  has_many :players, through: :games
  # validates_presence_of :name
end
