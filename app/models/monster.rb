class Monster < ApplicationRecord
  has_many :monstermoves
  has_many :moves, through: :monstermoves
end
