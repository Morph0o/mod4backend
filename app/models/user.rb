class User < ApplicationRecord
  has_many :user_moves
  has_many :moves, through: :user_moves
end
