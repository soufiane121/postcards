class Gift < ApplicationRecord
    belongs_to :user
    belongs_to :card
    validates :receiver_fname, :receiver_lname, :receiver_age, :receiver_address, presence: true
    
end
