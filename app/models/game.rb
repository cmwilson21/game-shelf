class Game < ApplicationRecord
  belongs_to :player
  belongs_to :console

  # validates_presence_of :name, :genre
end
