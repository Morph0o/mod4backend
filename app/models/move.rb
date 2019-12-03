class Move < ApplicationRecord
    has_many :monster_moves
    has many :user_moves
    has_many :monsters, through: :monster_moves
    has_many :users, though: :user_moves

end
