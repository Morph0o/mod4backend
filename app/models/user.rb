class User < ApplicationRecord
  has_many :usermoves
  has_many :moves, through: :usermoves
end
