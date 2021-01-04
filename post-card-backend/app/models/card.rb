class Card < ApplicationRecord
    has_many :gifts, dependent: :destroy
    has_many :users, through: :gifts
end
