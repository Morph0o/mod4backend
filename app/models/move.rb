class Move < ApplicationRecord
    has_many :monstermoves
    has_many :monsters, through: :monstermoves
    has_many :usermoves
    has_many :users, through: :usermoves

end
