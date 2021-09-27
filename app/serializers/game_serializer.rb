class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre
  has_one :player
  has_one :console
end
